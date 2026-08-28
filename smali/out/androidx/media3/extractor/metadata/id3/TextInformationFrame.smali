.class public final Landroidx/media3/extractor/metadata/id3/TextInformationFrame;
.super Landroidx/media3/extractor/metadata/id3/Id3Frame;
.source "TextInformationFrame.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/extractor/metadata/id3/TextInformationFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;

.field public final value:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final values:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 233
    new-instance v0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame$1;

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame$1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 70
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/media3/extractor/metadata/id3/TextInformationFrame$1;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 52
    iput-object p2, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 53
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    const/4 p2, 0x0

    .line 54
    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    return-void
.end method

.method private static parseId3v2point4TimestampFrameForDate(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    const/16 v3, 0xa

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-lt v1, v3, :cond_41

    .line 255
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    .line 257
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 258
    :cond_41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_66

    .line 259
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 261
    :cond_66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v6, :cond_7b

    .line 262
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_7b} :catch_7c

    :cond_7b
    :goto_7b
    return-object v0

    .line 266
    :catch_7c
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_35

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_35

    .line 204
    :cond_12
    check-cast p1, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 205
    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 206
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    .line 207
    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    move v0, v1

    :goto_34
    return v0

    :cond_35
    :goto_35
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 213
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 214
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 215
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V
    .registers 10

    .line 82
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v1, :sswitch_data_298

    goto/16 :goto_13d

    :sswitch_14
    const-string v1, "TYER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_13d

    :cond_1e
    const/16 v7, 0x16

    goto/16 :goto_13d

    :sswitch_22
    const-string v1, "TRCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_13d

    :cond_2c
    const/16 v7, 0x15

    goto/16 :goto_13d

    :sswitch_30
    const-string v1, "TPE3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_13d

    :cond_3a
    const/16 v7, 0x14

    goto/16 :goto_13d

    :sswitch_3e
    const-string v1, "TPE2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_13d

    :cond_48
    const/16 v7, 0x13

    goto/16 :goto_13d

    :sswitch_4c
    const-string v1, "TPE1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_13d

    :cond_56
    const/16 v7, 0x12

    goto/16 :goto_13d

    :sswitch_5a
    const-string v1, "TIT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_13d

    :cond_64
    const/16 v7, 0x11

    goto/16 :goto_13d

    :sswitch_68
    const-string v1, "TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_13d

    :cond_72
    const/16 v7, 0x10

    goto/16 :goto_13d

    :sswitch_76
    const-string v1, "TDRL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_13d

    :cond_80
    const/16 v7, 0xf

    goto/16 :goto_13d

    :sswitch_84
    const-string v1, "TDRC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_13d

    :cond_8e
    const/16 v7, 0xe

    goto/16 :goto_13d

    :sswitch_92
    const-string v1, "TDAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto/16 :goto_13d

    :cond_9c
    const/16 v7, 0xd

    goto/16 :goto_13d

    :sswitch_a0
    const-string v1, "TCON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    goto/16 :goto_13d

    :cond_aa
    const/16 v7, 0xc

    goto/16 :goto_13d

    :sswitch_ae
    const-string v1, "TCOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    goto/16 :goto_13d

    :cond_b8
    const/16 v7, 0xb

    goto/16 :goto_13d

    :sswitch_bc
    const-string v1, "TALB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    goto/16 :goto_13d

    :cond_c6
    const/16 v7, 0xa

    goto/16 :goto_13d

    :sswitch_ca
    const-string v1, "TYE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    goto/16 :goto_13d

    :cond_d4
    const/16 v7, 0x9

    goto/16 :goto_13d

    :sswitch_d8
    const-string v1, "TXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e2

    goto/16 :goto_13d

    :cond_e2
    const/16 v7, 0x8

    goto/16 :goto_13d

    :sswitch_e6
    const-string v1, "TT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ef

    goto :goto_13d

    :cond_ef
    const/4 v7, 0x7

    goto :goto_13d

    :sswitch_f1
    const-string v1, "TRK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fa

    goto :goto_13d

    :cond_fa
    const/4 v7, 0x6

    goto :goto_13d

    :sswitch_fc
    const-string v1, "TP3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_105

    goto :goto_13d

    :cond_105
    const/4 v7, 0x5

    goto :goto_13d

    :sswitch_107
    const-string v1, "TP2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_110

    goto :goto_13d

    :cond_110
    move v7, v2

    goto :goto_13d

    :sswitch_112
    const-string v1, "TP1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11b

    goto :goto_13d

    :cond_11b
    move v7, v3

    goto :goto_13d

    :sswitch_11d
    const-string v1, "TDA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_126

    goto :goto_13d

    :cond_126
    move v7, v4

    goto :goto_13d

    :sswitch_128
    const-string v1, "TCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_131

    goto :goto_13d

    :cond_131
    move v7, v5

    goto :goto_13d

    :sswitch_133
    const-string v1, "TAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13c

    goto :goto_13d

    :cond_13c
    move v7, v6

    :goto_13d
    packed-switch v7, :pswitch_data_2f6

    goto/16 :goto_297

    .line 150
    :pswitch_142
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->parseId3v2point4TimestampFrameForDate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v5, :cond_16c

    if-eq v1, v4, :cond_163

    if-eq v1, v3, :cond_15a

    goto/16 :goto_297

    .line 153
    :cond_15a
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setReleaseDay(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 156
    :cond_163
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setReleaseMonth(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 159
    :cond_16c
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setReleaseYear(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    goto/16 :goto_297

    .line 132
    :pswitch_177
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->parseId3v2point4TimestampFrameForDate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v5, :cond_1a1

    if-eq v1, v4, :cond_198

    if-eq v1, v3, :cond_18f

    goto/16 :goto_297

    .line 135
    :cond_18f
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingDay(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 138
    :cond_198
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingMonth(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 141
    :cond_1a1
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    goto/16 :goto_297

    .line 180
    :pswitch_1ac
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->tryParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1c7

    .line 182
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setGenre(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    goto/16 :goto_297

    .line 185
    :cond_1c7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Util;->resolveV1Genre(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_297

    .line 187
    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setGenre(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    goto/16 :goto_297

    .line 115
    :pswitch_1d6
    :try_start_1d6
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    :try_end_1e9
    .catch Ljava/lang/NumberFormatException; {:try_start_1d6 .. :try_end_1e9} :catch_297

    goto/16 :goto_297

    .line 177
    :pswitch_1eb
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setWriter(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    goto/16 :goto_297

    .line 85
    :pswitch_1f8
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    goto/16 :goto_297

    .line 101
    :pswitch_205
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    :try_start_213
    aget-object v1, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 106
    array-length v2, v0

    if-le v2, v5, :cond_227

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_228

    :cond_227
    const/4 v0, 0x0

    .line 107
    :goto_228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setTrackNumber(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setTotalTrackCount(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    :try_end_233
    .catch Ljava/lang/NumberFormatException; {:try_start_213 .. :try_end_233} :catch_297

    goto :goto_297

    .line 173
    :pswitch_234
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setConductor(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    goto :goto_297

    .line 93
    :pswitch_240
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    goto :goto_297

    .line 89
    :pswitch_24c
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    goto :goto_297

    .line 123
    :pswitch_258
    :try_start_258
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 125
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingMonth(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingDay(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    :try_end_27f
    .catch Ljava/lang/NumberFormatException; {:try_start_258 .. :try_end_27f} :catch_297
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_258 .. :try_end_27f} :catch_297

    goto :goto_297

    .line 169
    :pswitch_280
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setComposer(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    goto :goto_297

    .line 97
    :pswitch_28c
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    :catch_297
    :cond_297
    :goto_297
    return-void

    :sswitch_data_298
    .sparse-switch
        0x1437f -> :sswitch_133
        0x143be -> :sswitch_128
        0x143d1 -> :sswitch_11d
        0x14535 -> :sswitch_112
        0x14536 -> :sswitch_107
        0x14537 -> :sswitch_fc
        0x1458d -> :sswitch_f1
        0x145b2 -> :sswitch_e6
        0x14650 -> :sswitch_d8
        0x14660 -> :sswitch_ca
        0x272ca3 -> :sswitch_bc
        0x27348d -> :sswitch_ae
        0x27348e -> :sswitch_a0
        0x2736a3 -> :sswitch_92
        0x2738a1 -> :sswitch_84
        0x2738aa -> :sswitch_76
        0x273d2d -> :sswitch_68
        0x274b93 -> :sswitch_5a
        0x276408 -> :sswitch_4c
        0x276409 -> :sswitch_3e
        0x27640a -> :sswitch_30
        0x276b66 -> :sswitch_22
        0x2785f2 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_2f6
    .packed-switch 0x0
        :pswitch_28c
        :pswitch_280
        :pswitch_258
        :pswitch_24c
        :pswitch_240
        :pswitch_234
        :pswitch_205
        :pswitch_1f8
        :pswitch_1eb
        :pswitch_1d6
        :pswitch_28c
        :pswitch_280
        :pswitch_1ac
        :pswitch_258
        :pswitch_177
        :pswitch_142
        :pswitch_1eb
        :pswitch_1f8
        :pswitch_24c
        :pswitch_240
        :pswitch_234
        :pswitch_205
        :pswitch_1d6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 228
    iget-object p2, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object p2, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object p2, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
