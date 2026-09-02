.class Landroidx/webkit/internal/MimeUtil;
.super Ljava/lang/Object;
.source "MimeUtil.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMimeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_4
    invoke-static {p0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 39
    :cond_b
    invoke-static {p0}, Landroidx/webkit/internal/MimeUtil;->guessHardcodedMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static guessHardcodedMime(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v0, 0x2e

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_b

    return-object v2

    :cond_b
    const/4 v4, 0x1

    add-int/2addr v1, v4

    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_31e

    :goto_1f
    move v0, v3

    goto/16 :goto_2bf

    :sswitch_22
    const-string v0, "xhtml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_1f

    :cond_2b
    const/16 v0, 0x31

    goto/16 :goto_2bf

    :sswitch_2f
    const-string v0, "shtml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_1f

    :cond_38
    const/16 v0, 0x30

    goto/16 :goto_2bf

    :sswitch_3c
    const-string v0, "pjpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    goto :goto_1f

    :cond_45
    const/16 v0, 0x2f

    goto/16 :goto_2bf

    :sswitch_49
    const-string v1, "mhtml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2bf

    goto :goto_1f

    :sswitch_52
    const-string v0, "ehtml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    goto :goto_1f

    :cond_5b
    const/16 v0, 0x2d

    goto/16 :goto_2bf

    :sswitch_5f
    const-string v0, "xhtm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_68

    goto :goto_1f

    :cond_68
    const/16 v0, 0x2c

    goto/16 :goto_2bf

    :sswitch_6c
    const-string v0, "woff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_75

    goto :goto_1f

    :cond_75
    const/16 v0, 0x2b

    goto/16 :goto_2bf

    :sswitch_79
    const-string v0, "webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_82

    goto :goto_1f

    :cond_82
    const/16 v0, 0x2a

    goto/16 :goto_2bf

    :sswitch_86
    const-string v0, "webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8f

    goto :goto_1f

    :cond_8f
    const/16 v0, 0x29

    goto/16 :goto_2bf

    :sswitch_93
    const-string v0, "wasm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9c

    goto :goto_1f

    :cond_9c
    const/16 v0, 0x28

    goto/16 :goto_2bf

    :sswitch_a0
    const-string v0, "tiff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_aa

    goto/16 :goto_1f

    :cond_aa
    const/16 v0, 0x27

    goto/16 :goto_2bf

    :sswitch_ae
    const-string v0, "svgz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b8

    goto/16 :goto_1f

    :cond_b8
    const/16 v0, 0x26

    goto/16 :goto_2bf

    :sswitch_bc
    const-string v0, "shtm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c6

    goto/16 :goto_1f

    :cond_c6
    const/16 v0, 0x25

    goto/16 :goto_2bf

    :sswitch_ca
    const-string v0, "opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d4

    goto/16 :goto_1f

    :cond_d4
    const/16 v0, 0x24

    goto/16 :goto_2bf

    :sswitch_d8
    const-string v0, "mpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e2

    goto/16 :goto_1f

    :cond_e2
    const/16 v0, 0x23

    goto/16 :goto_2bf

    :sswitch_e6
    const-string v0, "json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f0

    goto/16 :goto_1f

    :cond_f0
    const/16 v0, 0x22

    goto/16 :goto_2bf

    :sswitch_f4
    const-string v0, "jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fe

    goto/16 :goto_1f

    :cond_fe
    const/16 v0, 0x21

    goto/16 :goto_2bf

    :sswitch_102
    const-string v0, "jfif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10c

    goto/16 :goto_1f

    :cond_10c
    const/16 v0, 0x20

    goto/16 :goto_2bf

    :sswitch_110
    const-string v0, "html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11a

    goto/16 :goto_1f

    :cond_11a
    const/16 v0, 0x1f

    goto/16 :goto_2bf

    :sswitch_11e
    const-string v0, "flac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_128

    goto/16 :goto_1f

    :cond_128
    const/16 v0, 0x1e

    goto/16 :goto_2bf

    :sswitch_12c
    const-string v0, "apng"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_136

    goto/16 :goto_1f

    :cond_136
    const/16 v0, 0x1d

    goto/16 :goto_2bf

    :sswitch_13a
    const-string v0, "zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_144

    goto/16 :goto_1f

    :cond_144
    const/16 v0, 0x1c

    goto/16 :goto_2bf

    :sswitch_148
    const-string v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_152

    goto/16 :goto_1f

    :cond_152
    const/16 v0, 0x1b

    goto/16 :goto_2bf

    :sswitch_156
    const-string v0, "xht"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_160

    goto/16 :goto_1f

    :cond_160
    const/16 v0, 0x1a

    goto/16 :goto_2bf

    :sswitch_164
    const-string v0, "wav"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16e

    goto/16 :goto_1f

    :cond_16e
    const/16 v0, 0x19

    goto/16 :goto_2bf

    :sswitch_172
    const-string v0, "tif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17c

    goto/16 :goto_1f

    :cond_17c
    const/16 v0, 0x18

    goto/16 :goto_2bf

    :sswitch_180
    const-string v0, "tgz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18a

    goto/16 :goto_1f

    :cond_18a
    const/16 v0, 0x17

    goto/16 :goto_2bf

    :sswitch_18e
    const-string v0, "svg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_198

    goto/16 :goto_1f

    :cond_198
    const/16 v0, 0x16

    goto/16 :goto_2bf

    :sswitch_19c
    const-string v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a6

    goto/16 :goto_1f

    :cond_1a6
    const/16 v0, 0x15

    goto/16 :goto_2bf

    :sswitch_1aa
    const-string v0, "pjp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b4

    goto/16 :goto_1f

    :cond_1b4
    const/16 v0, 0x14

    goto/16 :goto_2bf

    :sswitch_1b8
    const-string v0, "pdf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c2

    goto/16 :goto_1f

    :cond_1c2
    const/16 v0, 0x13

    goto/16 :goto_2bf

    :sswitch_1c6
    const-string v0, "ogv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d0

    goto/16 :goto_1f

    :cond_1d0
    const/16 v0, 0x12

    goto/16 :goto_2bf

    :sswitch_1d4
    const-string v0, "ogm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1de

    goto/16 :goto_1f

    :cond_1de
    const/16 v0, 0x11

    goto/16 :goto_2bf

    :sswitch_1e2
    const-string v0, "ogg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1ec

    goto/16 :goto_1f

    :cond_1ec
    const/16 v0, 0x10

    goto/16 :goto_2bf

    :sswitch_1f0
    const-string v0, "oga"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1fa

    goto/16 :goto_1f

    :cond_1fa
    const/16 v0, 0xf

    goto/16 :goto_2bf

    :sswitch_1fe
    const-string v0, "mpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_208

    goto/16 :goto_1f

    :cond_208
    const/16 v0, 0xe

    goto/16 :goto_2bf

    :sswitch_20c
    const-string v0, "mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_216

    goto/16 :goto_1f

    :cond_216
    const/16 v0, 0xd

    goto/16 :goto_2bf

    :sswitch_21a
    const-string v0, "mp3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_224

    goto/16 :goto_1f

    :cond_224
    const/16 v0, 0xc

    goto/16 :goto_2bf

    :sswitch_228
    const-string v0, "mjs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_232

    goto/16 :goto_1f

    :cond_232
    const/16 v0, 0xb

    goto/16 :goto_2bf

    :sswitch_236
    const-string v0, "mht"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_240

    goto/16 :goto_1f

    :cond_240
    const/16 v0, 0xa

    goto/16 :goto_2bf

    :sswitch_244
    const-string v0, "m4v"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24e

    goto/16 :goto_1f

    :cond_24e
    const/16 v0, 0x9

    goto/16 :goto_2bf

    :sswitch_252
    const-string v0, "m4a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25c

    goto/16 :goto_1f

    :cond_25c
    const/16 v0, 0x8

    goto/16 :goto_2bf

    :sswitch_260
    const-string v0, "jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26a

    goto/16 :goto_1f

    :cond_26a
    const/4 v0, 0x7

    goto :goto_2bf

    :sswitch_26c
    const-string v0, "ico"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_276

    goto/16 :goto_1f

    :cond_276
    const/4 v0, 0x6

    goto :goto_2bf

    :sswitch_278
    const-string v0, "htm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_282

    goto/16 :goto_1f

    :cond_282
    const/4 v0, 0x5

    goto :goto_2bf

    :sswitch_284
    const-string v0, "gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28e

    goto/16 :goto_1f

    :cond_28e
    const/4 v0, 0x4

    goto :goto_2bf

    :sswitch_290
    const-string v0, "css"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29a

    goto/16 :goto_1f

    :cond_29a
    const/4 v0, 0x3

    goto :goto_2bf

    :sswitch_29c
    const-string v0, "bmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a6

    goto/16 :goto_1f

    :cond_2a6
    const/4 v0, 0x2

    goto :goto_2bf

    :sswitch_2a8
    const-string v0, "js"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b2

    goto/16 :goto_1f

    :cond_2b2
    move v0, v4

    goto :goto_2bf

    :sswitch_2b4
    const-string v0, "gz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2be

    goto/16 :goto_1f

    :cond_2be
    const/4 v0, 0x0

    :cond_2bf
    :goto_2bf
    packed-switch v0, :pswitch_data_3e8

    return-object v2

    :pswitch_2c3
    const-string p0, "application/font-woff"

    return-object p0

    :pswitch_2c6
    const-string p0, "image/webp"

    return-object p0

    :pswitch_2c9
    const-string p0, "video/webm"

    return-object p0

    :pswitch_2cc
    const-string p0, "application/wasm"

    return-object p0

    :pswitch_2cf
    const-string p0, "application/json"

    return-object p0

    :pswitch_2d2
    const-string p0, "audio/flac"

    return-object p0

    :pswitch_2d5
    const-string p0, "image/apng"

    return-object p0

    :pswitch_2d8
    const-string p0, "application/zip"

    return-object p0

    :pswitch_2db
    const-string p0, "text/xml"

    return-object p0

    :pswitch_2de
    const-string p0, "application/xhtml+xml"

    return-object p0

    :pswitch_2e1
    const-string p0, "audio/wav"

    return-object p0

    :pswitch_2e4
    const-string p0, "image/tiff"

    return-object p0

    :pswitch_2e7
    const-string p0, "image/svg+xml"

    return-object p0

    :pswitch_2ea
    const-string p0, "image/png"

    return-object p0

    :pswitch_2ed
    const-string p0, "application/pdf"

    return-object p0

    :pswitch_2f0
    const-string p0, "video/ogg"

    return-object p0

    :pswitch_2f3
    const-string p0, "audio/ogg"

    return-object p0

    :pswitch_2f6
    const-string p0, "video/mpeg"

    return-object p0

    :pswitch_2f9
    const-string p0, "audio/mpeg"

    return-object p0

    :pswitch_2fc
    const-string p0, "multipart/related"

    return-object p0

    :pswitch_2ff
    const-string p0, "video/mp4"

    return-object p0

    :pswitch_302
    const-string p0, "audio/x-m4a"

    return-object p0

    :pswitch_305
    const-string p0, "image/jpeg"

    return-object p0

    :pswitch_308
    const-string p0, "image/x-icon"

    return-object p0

    :pswitch_30b
    const-string p0, "text/html"

    return-object p0

    :pswitch_30e
    const-string p0, "image/gif"

    return-object p0

    :pswitch_311
    const-string p0, "text/css"

    return-object p0

    :pswitch_314
    const-string p0, "image/bmp"

    return-object p0

    :pswitch_317
    const-string p0, "text/javascript"

    return-object p0

    :pswitch_31a
    const-string p0, "application/gzip"

    return-object p0

    nop

    :sswitch_data_31e
    .sparse-switch
        0xcf3 -> :sswitch_2b4
        0xd49 -> :sswitch_2a8
        0x17d85 -> :sswitch_29c
        0x18203 -> :sswitch_290
        0x18fc4 -> :sswitch_284
        0x194e1 -> :sswitch_278
        0x19695 -> :sswitch_26c
        0x19be1 -> :sswitch_260
        0x19fda -> :sswitch_252
        0x19fef -> :sswitch_244
        0x1a639 -> :sswitch_236
        0x1a676 -> :sswitch_228
        0x1a6f0 -> :sswitch_21a
        0x1a6f1 -> :sswitch_20c
        0x1a724 -> :sswitch_1fe
        0x1ad89 -> :sswitch_1f0
        0x1ad8f -> :sswitch_1e2
        0x1ad95 -> :sswitch_1d4
        0x1ad9e -> :sswitch_1c6
        0x1b0f2 -> :sswitch_1b8
        0x1b1b6 -> :sswitch_1aa
        0x1b229 -> :sswitch_19c
        0x1be64 -> :sswitch_18e
        0x1c067 -> :sswitch_180
        0x1c091 -> :sswitch_172
        0x1caec -> :sswitch_164
        0x1cf84 -> :sswitch_156
        0x1d017 -> :sswitch_148
        0x1d721 -> :sswitch_13a
        0x2dca28 -> :sswitch_12c
        0x2fff68 -> :sswitch_11e
        0x3107ab -> :sswitch_110
        0x31bb59 -> :sswitch_102
        0x31e068 -> :sswitch_f4
        0x31ece8 -> :sswitch_e6
        0x333d85 -> :sswitch_d8
        0x34283f -> :sswitch_ca
        0x35db8e -> :sswitch_bc
        0x360e96 -> :sswitch_ae
        0x3651f5 -> :sswitch_a0
        0x3792a4 -> :sswitch_93
        0x379f99 -> :sswitch_86
        0x379f9c -> :sswitch_79
        0x37c598 -> :sswitch_6c
        0x382169 -> :sswitch_5f
        0x5c04d90 -> :sswitch_52
        0x6310998 -> :sswitch_49
        0x65c28d8 -> :sswitch_3c
        0x685969e -> :sswitch_2f
        0x6cc0c23 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_3e8
    .packed-switch 0x0
        :pswitch_31a
        :pswitch_317
        :pswitch_314
        :pswitch_311
        :pswitch_30e
        :pswitch_30b
        :pswitch_308
        :pswitch_305
        :pswitch_302
        :pswitch_2ff
        :pswitch_2fc
        :pswitch_317
        :pswitch_2f9
        :pswitch_2ff
        :pswitch_2f6
        :pswitch_2f3
        :pswitch_2f3
        :pswitch_2f0
        :pswitch_2f0
        :pswitch_2ed
        :pswitch_305
        :pswitch_2ea
        :pswitch_2e7
        :pswitch_31a
        :pswitch_2e4
        :pswitch_2e1
        :pswitch_2de
        :pswitch_2db
        :pswitch_2d8
        :pswitch_2d5
        :pswitch_2d2
        :pswitch_30b
        :pswitch_305
        :pswitch_305
        :pswitch_2cf
        :pswitch_2f6
        :pswitch_2f3
        :pswitch_30b
        :pswitch_2e7
        :pswitch_2e4
        :pswitch_2cc
        :pswitch_2c9
        :pswitch_2c6
        :pswitch_2c3
        :pswitch_2de
        :pswitch_30b
        :pswitch_2fc
        :pswitch_305
        :pswitch_30b
        :pswitch_2de
    .end packed-switch
.end method
