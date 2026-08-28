.class public final Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Landroidx/media3/extractor/ts/TsPayloadReader$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR_TAG_CAPTION_SERVICE:I = 0x86

.field public static final FLAG_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final FLAG_DETECT_ACCESS_UNITS:I = 0x8

.field public static final FLAG_ENABLE_HDMV_DTS_AUDIO_STREAMS:I = 0x40

.field public static final FLAG_IGNORE_AAC_STREAM:I = 0x2

.field public static final FLAG_IGNORE_H264_STREAM:I = 0x4

.field public static final FLAG_IGNORE_SPLICE_INFO_STREAM:I = 0x10

.field public static final FLAG_OVERRIDE_CAPTION_DESCRIPTORS:I = 0x20


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 125
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    .line 140
    iput-object p2, p0, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-void
.end method

.method private buildSeiReader(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/SeiReader;
    .registers 3

    .line 222
    new-instance v0, Landroidx/media3/extractor/ts/SeiReader;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media3/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private buildUserDataReader(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/UserDataReader;
    .registers 3

    .line 235
    new-instance v0, Landroidx/media3/extractor/ts/UserDataReader;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media3/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private getClosedCaptionFormats(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x20

    .line 248
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 249
    iget-object p1, p0, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-object p1

    .line 251
    :cond_b
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object p1, p1, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 252
    iget-object p1, p0, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 253
    :goto_14
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_8e

    .line 254
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 255
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 256
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_8a

    .line 259
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    move v4, v2

    :goto_38
    if-ge v4, v1, :cond_8a

    const/4 v5, 0x3

    .line 262
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    .line 263
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_4a

    move v7, v8

    goto :goto_4b

    :cond_4a
    move v7, v2

    :goto_4b
    if-eqz v7, :cond_52

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_55

    :cond_52
    const-string v9, "application/cea-608"

    move v6, v8

    .line 276
    :goto_55
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    int-to-byte v10, v10

    .line 278
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-eqz v7, :cond_6a

    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_64

    goto :goto_65

    :cond_64
    move v8, v2

    .line 285
    :goto_65
    invoke-static {v8}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildCea708InitializationData(Z)Ljava/util/List;

    move-result-object v7

    goto :goto_6b

    :cond_6a
    const/4 v7, 0x0

    .line 288
    :goto_6b
    new-instance v8, Landroidx/media3/common/Format$Builder;

    invoke-direct {v8}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 290
    invoke-virtual {v8, v9}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v8

    .line 291
    invoke-virtual {v8, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 292
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 293
    invoke-virtual {v5, v7}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 294
    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    .line 288
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 299
    :cond_8a
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_14

    :cond_8e
    return-object p1
.end method

.method private isSet(I)Z
    .registers 3

    .line 306
    iget v0, p0, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method


# virtual methods
.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public createPayloadReader(ILandroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/TsPayloadReader;
    .registers 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_150

    const/4 v1, 0x3

    if-eq p1, v1, :cond_13f

    const/4 v1, 0x4

    if-eq p1, v1, :cond_13f

    const/16 v2, 0x15

    if-eq p1, v2, :cond_134

    const/16 v2, 0x1b

    const/4 v3, 0x0

    if-eq p1, v2, :cond_113

    const/16 v1, 0x24

    if-eq p1, v1, :cond_104

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_f9

    const/16 v1, 0x59

    if-eq p1, v1, :cond_ec

    const/16 v1, 0xac

    if-eq p1, v1, :cond_db

    const/16 v1, 0x101

    if-eq p1, v1, :cond_ce

    const/16 v1, 0x8a

    if-eq p1, v1, :cond_bb

    const/16 v1, 0x8b

    if-eq p1, v1, :cond_a8

    packed-switch p1, :pswitch_data_160

    packed-switch p1, :pswitch_data_16a

    packed-switch p1, :pswitch_data_174

    return-object v3

    :pswitch_38
    const/16 p1, 0x10

    .line 196
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_4d

    .line 198
    :cond_41
    new-instance v3, Landroidx/media3/extractor/ts/SectionReader;

    new-instance p1, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;

    const-string p2, "application/x-scte35"

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    :goto_4d
    return-object v3

    :pswitch_4e
    const/16 p1, 0x40

    .line 169
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-nez p1, :cond_bb

    return-object v3

    .line 165
    :pswitch_57
    new-instance p1, Landroidx/media3/extractor/ts/PesReader;

    new-instance v0, Landroidx/media3/extractor/ts/Ac3Reader;

    iget-object v1, p2, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->getRoleFlags()I

    move-result p2

    invoke-direct {v0, v1, p2}, Landroidx/media3/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 160
    :pswitch_68
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_6f

    goto :goto_7f

    .line 162
    :cond_6f
    new-instance v3, Landroidx/media3/extractor/ts/PesReader;

    new-instance p1, Landroidx/media3/extractor/ts/LatmReader;

    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->getRoleFlags()I

    move-result p2

    invoke-direct {p1, v0, p2}, Landroidx/media3/extractor/ts/LatmReader;-><init>(Ljava/lang/String;I)V

    invoke-direct {v3, p1}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    :goto_7f
    return-object v3

    .line 184
    :pswitch_80
    new-instance p1, Landroidx/media3/extractor/ts/PesReader;

    new-instance v0, Landroidx/media3/extractor/ts/H263Reader;

    invoke-direct {p0, p2}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/UserDataReader;

    move-result-object p2

    invoke-direct {v0, p2}, Landroidx/media3/extractor/ts/H263Reader;-><init>(Landroidx/media3/extractor/ts/UserDataReader;)V

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 156
    :pswitch_8f
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_96

    goto :goto_a7

    .line 158
    :cond_96
    new-instance v3, Landroidx/media3/extractor/ts/PesReader;

    new-instance p1, Landroidx/media3/extractor/ts/AdtsReader;

    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->getRoleFlags()I

    move-result p2

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, p2}, Landroidx/media3/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;I)V

    invoke-direct {v3, p1}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    :goto_a7
    return-object v3

    .line 178
    :cond_a8
    new-instance p1, Landroidx/media3/extractor/ts/PesReader;

    new-instance v0, Landroidx/media3/extractor/ts/DtsReader;

    iget-object v1, p2, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    .line 179
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->getRoleFlags()I

    move-result p2

    const/16 v2, 0x1520

    invoke-direct {v0, v1, p2, v2}, Landroidx/media3/extractor/ts/DtsReader;-><init>(Ljava/lang/String;II)V

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 175
    :cond_bb
    :pswitch_bb
    new-instance p1, Landroidx/media3/extractor/ts/PesReader;

    new-instance v0, Landroidx/media3/extractor/ts/DtsReader;

    iget-object v1, p2, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    .line 176
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->getRoleFlags()I

    move-result p2

    const/16 v2, 0x1000

    invoke-direct {v0, v1, p2, v2}, Landroidx/media3/extractor/ts/DtsReader;-><init>(Ljava/lang/String;II)V

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 204
    :cond_ce
    new-instance p1, Landroidx/media3/extractor/ts/SectionReader;

    new-instance p2, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;

    const-string v0, "application/vnd.dvb.ait"

    invoke-direct {p2, v0}, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    return-object p1

    .line 167
    :cond_db
    new-instance p1, Landroidx/media3/extractor/ts/PesReader;

    new-instance v0, Landroidx/media3/extractor/ts/Ac4Reader;

    iget-object v1, p2, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->getRoleFlags()I

    move-result p2

    invoke-direct {v0, v1, p2}, Landroidx/media3/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 202
    :cond_ec
    new-instance p1, Landroidx/media3/extractor/ts/PesReader;

    new-instance v0, Landroidx/media3/extractor/ts/DvbSubtitleReader;

    iget-object p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    invoke-direct {v0, p2}, Landroidx/media3/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 206
    :cond_f9
    new-instance p1, Landroidx/media3/extractor/ts/PesReader;

    new-instance p2, Landroidx/media3/extractor/ts/MpeghReader;

    invoke-direct {p2}, Landroidx/media3/extractor/ts/MpeghReader;-><init>()V

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 194
    :cond_104
    new-instance p1, Landroidx/media3/extractor/ts/PesReader;

    new-instance v0, Landroidx/media3/extractor/ts/H265Reader;

    invoke-direct {p0, p2}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/SeiReader;

    move-result-object p2

    invoke-direct {v0, p2}, Landroidx/media3/extractor/ts/H265Reader;-><init>(Landroidx/media3/extractor/ts/SeiReader;)V

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 186
    :cond_113
    invoke-direct {p0, v1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_11a

    goto :goto_133

    .line 188
    :cond_11a
    new-instance v3, Landroidx/media3/extractor/ts/PesReader;

    new-instance p1, Landroidx/media3/extractor/ts/H264Reader;

    .line 190
    invoke-direct {p0, p2}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/SeiReader;

    move-result-object p2

    const/4 v0, 0x1

    .line 191
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    const/16 v1, 0x8

    .line 192
    invoke-direct {p0, v1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Landroidx/media3/extractor/ts/H264Reader;-><init>(Landroidx/media3/extractor/ts/SeiReader;ZZ)V

    invoke-direct {v3, p1}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    :goto_133
    return-object v3

    .line 200
    :cond_134
    new-instance p1, Landroidx/media3/extractor/ts/PesReader;

    new-instance p2, Landroidx/media3/extractor/ts/Id3Reader;

    invoke-direct {p2}, Landroidx/media3/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 154
    :cond_13f
    new-instance p1, Landroidx/media3/extractor/ts/PesReader;

    new-instance v0, Landroidx/media3/extractor/ts/MpegAudioReader;

    iget-object v1, p2, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->getRoleFlags()I

    move-result p2

    invoke-direct {v0, v1, p2}, Landroidx/media3/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 182
    :cond_150
    :pswitch_150
    new-instance p1, Landroidx/media3/extractor/ts/PesReader;

    new-instance v0, Landroidx/media3/extractor/ts/H262Reader;

    invoke-direct {p0, p2}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/UserDataReader;

    move-result-object p2

    invoke-direct {v0, p2}, Landroidx/media3/extractor/ts/H262Reader;-><init>(Landroidx/media3/extractor/ts/UserDataReader;)V

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    nop

    :pswitch_data_160
    .packed-switch 0xf
        :pswitch_8f
        :pswitch_80
        :pswitch_68
    .end packed-switch

    :pswitch_data_16a
    .packed-switch 0x80
        :pswitch_150
        :pswitch_57
        :pswitch_4e
    .end packed-switch

    :pswitch_data_174
    .packed-switch 0x86
        :pswitch_38
        :pswitch_57
        :pswitch_bb
    .end packed-switch
.end method
