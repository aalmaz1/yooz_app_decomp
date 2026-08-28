.class final Landroidx/media3/extractor/mp4/MetadataUtil;
.super Ljava/lang/Object;
.source "MetadataUtil.java"


# static fields
.field private static final PICTURE_TYPE_FRONT_COVER:I = 0x3

.field private static final SHORT_TYPE_ALBUM:I = 0x616c62

.field private static final SHORT_TYPE_ARTIST:I = 0x415254

.field private static final SHORT_TYPE_COMMENT:I = 0x636d74

.field private static final SHORT_TYPE_COMPOSER_1:I = 0x636f6d

.field private static final SHORT_TYPE_COMPOSER_2:I = 0x777274

.field private static final SHORT_TYPE_ENCODER:I = 0x746f6f

.field private static final SHORT_TYPE_GENRE:I = 0x67656e

.field private static final SHORT_TYPE_LYRICS:I = 0x6c7972

.field private static final SHORT_TYPE_NAME_1:I = 0x6e616d

.field private static final SHORT_TYPE_NAME_2:I = 0x74726b

.field private static final SHORT_TYPE_YEAR:I = 0x646179

.field private static final TAG:Ljava/lang/String; = "MetadataUtil"

.field private static final TYPE_ALBUM_ARTIST:I = 0x61415254

.field private static final TYPE_COMPILATION:I = 0x6370696c

.field private static final TYPE_COVER_ART:I = 0x636f7672

.field private static final TYPE_DISK_NUMBER:I = 0x6469736b

.field private static final TYPE_GAPLESS_ALBUM:I = 0x70676170

.field private static final TYPE_GENRE:I = 0x676e7265

.field private static final TYPE_GROUPING:I = 0x677270

.field private static final TYPE_INTERNAL:I = 0x2d2d2d2d

.field private static final TYPE_RATING:I = 0x72746e67

.field private static final TYPE_SORT_ALBUM:I = 0x736f616c

.field private static final TYPE_SORT_ALBUM_ARTIST:I = 0x736f6161

.field private static final TYPE_SORT_ARTIST:I = 0x736f6172

.field private static final TYPE_SORT_COMPOSER:I = 0x736f636f

.field private static final TYPE_SORT_TRACK_NAME:I = 0x736f6e6d

.field private static final TYPE_TEMPO:I = 0x746d706f

.field private static final TYPE_TOP_BYTE_COPYRIGHT:I = 0xa9

.field private static final TYPE_TOP_BYTE_REPLACEMENT:I = 0xfd

.field private static final TYPE_TRACK_NUMBER:I = 0x74726b6e

.field private static final TYPE_TV_SHOW:I = 0x74767368

.field private static final TYPE_TV_SORT_SHOW:I = 0x736f736e


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseCommentAttribute(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/CommentFrame;
    .registers 5

    .line 257
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 258
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_21

    const/16 p0, 0x8

    .line 260
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 261
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 262
    new-instance p1, Landroidx/media3/extractor/metadata/id3/CommentFrame;

    const-string/jumbo v0, "und"

    invoke-direct {p1, v0, p0, p0}, Landroidx/media3/extractor/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 264
    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to parse comment attribute: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/media3/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseCoverArt(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/ApicFrame;
    .registers 6

    .line 349
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 350
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    const-string v3, "MetadataUtil"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_4f

    .line 352
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 353
    invoke-static {v1}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1f

    const-string v2, "image/jpeg"

    goto :goto_27

    :cond_1f
    const/16 v2, 0xe

    if-ne v1, v2, :cond_26

    const-string v2, "image/png"

    goto :goto_27

    :cond_26
    move-object v2, v4

    :goto_27
    if-nez v2, :cond_3c

    .line 356
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unrecognized cover art flags: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_3c
    const/4 v1, 0x4

    .line 359
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 360
    new-array v1, v0, [B

    const/4 v3, 0x0

    .line 361
    invoke-virtual {p0, v1, v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 362
    new-instance p0, Landroidx/media3/extractor/metadata/id3/ApicFrame;

    const/4 v0, 0x3

    invoke-direct {p0, v2, v4, v0, v1}, Landroidx/media3/extractor/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p0

    :cond_4f
    const-string p0, "Failed to parse cover art attribute"

    .line 368
    invoke-static {v3, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static parseIlstElement(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata$Entry;
    .registers 7

    const-string v0, "Skipped unknown metadata entry: "

    .line 143
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 144
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    add-int/2addr v1, v2

    .line 145
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    shr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xa9

    if-eq v3, v4, :cond_118

    const/16 v4, 0xfd

    if-ne v3, v4, :cond_1d

    goto/16 :goto_118

    :cond_1d
    const v3, 0x676e7265

    if-ne v2, v3, :cond_2a

    .line 172
    :try_start_22
    invoke-static {p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseStandardGenreAttribute(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_2a
    const v3, 0x6469736b

    if-ne v2, v3, :cond_39

    :try_start_2f
    const-string v0, "TPOS"

    .line 174
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_39
    const v3, 0x74726b6e

    if-ne v2, v3, :cond_48

    :try_start_3e
    const-string v0, "TRCK"

    .line 176
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_48
    const v3, 0x746d706f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_59

    :try_start_4f
    const-string v0, "TBPM"

    .line 178
    invoke-static {v2, v0, p0, v5, v4}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v0
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_59
    const v3, 0x6370696c

    if-ne v2, v3, :cond_68

    :try_start_5e
    const-string v0, "TCMP"

    .line 180
    invoke-static {v2, v0, p0, v5, v5}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v0
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_68
    const v3, 0x636f7672

    if-ne v2, v3, :cond_75

    .line 182
    :try_start_6d
    invoke-static {p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseCoverArt(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/ApicFrame;

    move-result-object v0
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_75
    const v3, 0x61415254

    if-ne v2, v3, :cond_84

    :try_start_7a
    const-string v0, "TPE2"

    .line 184
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_84
    const v3, 0x736f6e6d

    if-ne v2, v3, :cond_93

    :try_start_89
    const-string v0, "TSOT"

    .line 186
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_93
    const v3, 0x736f616c

    if-ne v2, v3, :cond_a2

    :try_start_98
    const-string v0, "TSOA"

    .line 188
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_9e
    .catchall {:try_start_98 .. :try_end_9e} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_a2
    const v3, 0x736f6172

    if-ne v2, v3, :cond_b1

    :try_start_a7
    const-string v0, "TSOP"

    .line 190
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_ad
    .catchall {:try_start_a7 .. :try_end_ad} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_b1
    const v3, 0x736f6161

    if-ne v2, v3, :cond_c0

    :try_start_b6
    const-string v0, "TSO2"

    .line 192
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_bc
    .catchall {:try_start_b6 .. :try_end_bc} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_c0
    const v3, 0x736f636f

    if-ne v2, v3, :cond_cf

    :try_start_c5
    const-string v0, "TSOC"

    .line 194
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_cb
    .catchall {:try_start_c5 .. :try_end_cb} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_cf
    const v3, 0x72746e67

    if-ne v2, v3, :cond_de

    :try_start_d4
    const-string v0, "ITUNESADVISORY"

    .line 196
    invoke-static {v2, v0, p0, v4, v4}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v0
    :try_end_da
    .catchall {:try_start_d4 .. :try_end_da} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_de
    const v3, 0x70676170

    if-ne v2, v3, :cond_ed

    :try_start_e3
    const-string v0, "ITUNESGAPLESS"

    .line 198
    invoke-static {v2, v0, p0, v4, v5}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v0
    :try_end_e9
    .catchall {:try_start_e3 .. :try_end_e9} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_ed
    const v3, 0x736f736e

    if-ne v2, v3, :cond_fc

    :try_start_f2
    const-string v0, "TVSHOWSORT"

    .line 200
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_f8
    .catchall {:try_start_f2 .. :try_end_f8} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_fc
    const v3, 0x74767368

    if-ne v2, v3, :cond_10b

    :try_start_101
    const-string v0, "TVSHOW"

    .line 202
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_107
    .catchall {:try_start_101 .. :try_end_107} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_10b
    const v3, 0x2d2d2d2d

    if-ne v2, v3, :cond_1ad

    .line 204
    :try_start_110
    invoke-static {p0, v1}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseInternalAttribute(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v0
    :try_end_114
    .catchall {:try_start_110 .. :try_end_114} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_118
    :goto_118
    const v3, 0xffffff

    and-int/2addr v3, v2

    const v4, 0x636d74

    if-ne v3, v4, :cond_12c

    .line 151
    :try_start_121
    invoke-static {v2, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/CommentFrame;

    move-result-object v0
    :try_end_125
    .catchall {:try_start_121 .. :try_end_125} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :catchall_129
    move-exception v0

    goto/16 :goto_1dc

    :cond_12c
    const v4, 0x6e616d

    if-eq v3, v4, :cond_1d2

    const v4, 0x74726b

    if-ne v3, v4, :cond_138

    goto/16 :goto_1d2

    :cond_138
    const v4, 0x636f6d

    if-eq v3, v4, :cond_1c8

    const v4, 0x777274

    if-ne v3, v4, :cond_144

    goto/16 :goto_1c8

    :cond_144
    const v4, 0x646179

    if-ne v3, v4, :cond_153

    :try_start_149
    const-string v0, "TDRC"

    .line 157
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_14f
    .catchall {:try_start_149 .. :try_end_14f} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_153
    const v4, 0x415254

    if-ne v3, v4, :cond_162

    :try_start_158
    const-string v0, "TPE1"

    .line 159
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_15e
    .catchall {:try_start_158 .. :try_end_15e} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_162
    const v4, 0x746f6f

    if-ne v3, v4, :cond_171

    :try_start_167
    const-string v0, "TSSE"

    .line 161
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_16d
    .catchall {:try_start_167 .. :try_end_16d} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_171
    const v4, 0x616c62

    if-ne v3, v4, :cond_180

    :try_start_176
    const-string v0, "TALB"

    .line 163
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_17c
    .catchall {:try_start_176 .. :try_end_17c} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_180
    const v4, 0x6c7972

    if-ne v3, v4, :cond_18f

    :try_start_185
    const-string v0, "USLT"

    .line 165
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_18b
    .catchall {:try_start_185 .. :try_end_18b} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_18f
    const v4, 0x67656e

    if-ne v3, v4, :cond_19e

    :try_start_194
    const-string v0, "TCON"

    .line 167
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_19a
    .catchall {:try_start_194 .. :try_end_19a} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_19e
    const v4, 0x677270

    if-ne v3, v4, :cond_1ad

    :try_start_1a3
    const-string v0, "TIT1"

    .line 169
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_1a9
    .catchall {:try_start_1a3 .. :try_end_1a9} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_1ad
    :try_start_1ad
    const-string v3, "MetadataUtil"

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/media3/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c3
    .catchall {:try_start_1ad .. :try_end_1c3} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 p0, 0x0

    return-object p0

    :cond_1c8
    :goto_1c8
    :try_start_1c8
    const-string v0, "TCOM"

    .line 155
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_1ce
    .catchall {:try_start_1c8 .. :try_end_1ce} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_1d2
    :goto_1d2
    :try_start_1d2
    const-string v0, "TIT2"

    .line 153
    invoke-static {v2, v0, p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0
    :try_end_1d8
    .catchall {:try_start_1d2 .. :try_end_1d8} :catchall_129

    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :goto_1dc
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 210
    throw v0
.end method

.method private static parseIndexAndCountAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;
    .registers 7

    .line 314
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 315
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_53

    const/16 v1, 0x16

    if-lt v0, v1, :cond_53

    const/16 v0, 0xa

    .line 317
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 318
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    if-lez v0, :cond_53

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 321
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    if-lez p2, :cond_49

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 325
    :cond_49
    new-instance p2, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 326
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {p2, p1, v3, p0}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    .line 329
    :cond_53
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to parse index/count attribute: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/media3/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static parseIntegerAttribute(Landroidx/media3/common/util/ParsableByteArray;)I
    .registers 4

    .line 290
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 291
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_3d

    const/16 v1, 0x8

    .line 293
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_38

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    goto :goto_3d

    .line 302
    :cond_21
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3d

    .line 303
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    return p0

    .line 300
    :cond_2e
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result p0

    return p0

    .line 298
    :cond_33
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    return p0

    .line 296
    :cond_38
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    return p0

    :cond_3d
    :goto_3d
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse data atom to int"

    .line 307
    invoke-static {p0, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private static parseIntegerAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .registers 5

    .line 275
    invoke-static {p2}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result p2

    if-eqz p4, :cond_b

    const/4 p4, 0x1

    .line 277
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_b
    const/4 p4, 0x0

    if-ltz p2, :cond_2b

    if-eqz p3, :cond_1e

    .line 281
    new-instance p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 282
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2a

    .line 283
    :cond_1e
    new-instance p0, Landroidx/media3/extractor/metadata/id3/CommentFrame;

    const-string/jumbo p3, "und"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Landroidx/media3/extractor/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    return-object p0

    .line 285
    :cond_2b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to parse uint8 attribute: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/media3/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method

.method private static parseInternalAttribute(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    move-object v2, v0

    move-object v3, v2

    move v4, v1

    move v5, v4

    .line 378
    :goto_6
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v6

    if-ge v6, p1, :cond_41

    .line 379
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 380
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 381
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    const/4 v9, 0x4

    .line 382
    invoke-virtual {p0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const v9, 0x6d65616e

    if-ne v8, v9, :cond_28

    add-int/lit8 v7, v7, -0xc

    .line 384
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_28
    const v9, 0x6e616d65

    if-ne v8, v9, :cond_34

    add-int/lit8 v7, v7, -0xc

    .line 386
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_34
    const v9, 0x64617461

    if-ne v8, v9, :cond_3b

    move v4, v6

    move v5, v7

    :cond_3b
    add-int/lit8 v7, v7, -0xc

    .line 392
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_6

    :cond_41
    if-eqz v2, :cond_5b

    if-eqz v3, :cond_5b

    if-ne v4, v1, :cond_48

    goto :goto_5b

    .line 398
    :cond_48
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/16 p1, 0x10

    .line 399
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v5, p1

    .line 400
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 401
    new-instance p1, Landroidx/media3/extractor/metadata/id3/InternalFrame;

    invoke-direct {p1, v2, v3, p0}, Landroidx/media3/extractor/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_5b
    :goto_5b
    return-object v0
.end method

.method public static parseMdtaMetadataEntryFromIlst(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media3/container/MdtaMetadataEntry;
    .registers 7

    .line 225
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_2e

    .line 226
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 227
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x64617461

    if-ne v2, v3, :cond_29

    .line 229
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 230
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    add-int/lit8 v1, v1, -0x10

    .line 232
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 233
    invoke-virtual {p0, v2, v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 234
    new-instance p0, Landroidx/media3/container/MdtaMetadataEntry;

    invoke-direct {p0, p2, v2, v0, p1}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V

    return-object p0

    :cond_29
    add-int/2addr v0, v1

    .line 236
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseStandardGenreAttribute(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;
    .registers 4

    .line 335
    invoke-static {p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 338
    invoke-static {p0}, Landroidx/media3/extractor/metadata/id3/Id3Util;->resolveV1Genre(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    .line 340
    new-instance v1, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    const-string v2, "TCON"

    .line 341
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v1, v2, v0, p0}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    :cond_19
    const-string p0, "MetadataUtil"

    const-string v1, "Failed to parse standard genre code"

    .line 343
    invoke-static {p0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseTextAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;
    .registers 7

    .line 244
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 245
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_23

    const/16 p0, 0x8

    .line 247
    invoke-virtual {p2, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 248
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 249
    new-instance p2, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {p2, p1, v3, p0}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    .line 251
    :cond_23
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to parse text attribute: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/media3/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static setFormatGaplessInfo(ILandroidx/media3/extractor/GaplessInfoHolder;Landroidx/media3/common/Format$Builder;)V
    .registers 4

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    .line 125
    invoke-virtual {p1}, Landroidx/media3/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 126
    iget p0, p1, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 127
    invoke-virtual {p2, p0}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    iget p1, p1, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 128
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    :cond_14
    return-void
.end method

.method public static varargs setFormatMetadata(ILandroidx/media3/common/Metadata;Landroidx/media3/common/Format$Builder;[Landroidx/media3/common/Metadata;)V
    .registers 10

    .line 92
    new-instance v0, Landroidx/media3/common/Metadata;

    const/4 v1, 0x0

    new-array v2, v1, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v0, v2}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    if-eqz p1, :cond_3d

    move v2, v1

    .line 95
    :goto_b
    invoke-virtual {p1}, Landroidx/media3/common/Metadata;->length()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 96
    invoke-virtual {p1, v2}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v3

    .line 97
    instance-of v4, v3, Landroidx/media3/container/MdtaMetadataEntry;

    if-eqz v4, :cond_3a

    .line 98
    check-cast v3, Landroidx/media3/container/MdtaMetadataEntry;

    .line 100
    iget-object v4, v3, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v5, "com.android.capture.fps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_32

    const/4 v4, 0x2

    if-ne p0, v4, :cond_3a

    new-array v4, v5, [Landroidx/media3/common/Metadata$Entry;

    aput-object v3, v4, v1

    .line 102
    invoke-virtual {v0, v4}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v0

    goto :goto_3a

    :cond_32
    new-array v4, v5, [Landroidx/media3/common/Metadata$Entry;

    aput-object v3, v4, v1

    .line 105
    invoke-virtual {v0, v4}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v0

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 111
    :cond_3d
    array-length p0, p3

    :goto_3e
    if-ge v1, p0, :cond_49

    aget-object p1, p3, v1

    .line 112
    invoke-virtual {v0, p1}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 115
    :cond_49
    invoke-virtual {v0}, Landroidx/media3/common/Metadata;->length()I

    move-result p0

    if-lez p0, :cond_52

    .line 116
    invoke-virtual {p2, v0}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    :cond_52
    return-void
.end method
