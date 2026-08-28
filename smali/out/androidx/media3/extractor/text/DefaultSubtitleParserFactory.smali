.class public final Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;
.super Ljava/lang/Object;
.source "DefaultSubtitleParserFactory.java"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleParser;
    .registers 5

    .line 95
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v0, :cond_a2

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_b8

    goto/16 :goto_68

    :sswitch_11
    const-string v1, "application/ttml+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_68

    :cond_1a
    const/4 v2, 0x7

    goto :goto_68

    :sswitch_1c
    const-string v1, "application/x-subrip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_68

    :cond_25
    const/4 v2, 0x6

    goto :goto_68

    :sswitch_27
    const-string v1, "text/x-ssa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_68

    :cond_30
    const/4 v2, 0x5

    goto :goto_68

    :sswitch_32
    const-string v1, "application/x-quicktime-tx3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_68

    :cond_3b
    const/4 v2, 0x4

    goto :goto_68

    :sswitch_3d
    const-string v1, "text/vtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_68

    :cond_46
    const/4 v2, 0x3

    goto :goto_68

    :sswitch_48
    const-string v1, "application/x-mp4-vtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    goto :goto_68

    :cond_51
    const/4 v2, 0x2

    goto :goto_68

    :sswitch_53
    const-string v1, "application/pgs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    goto :goto_68

    :cond_5c
    const/4 v2, 0x1

    goto :goto_68

    :sswitch_5e
    const-string v1, "application/dvbsubs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    goto :goto_68

    :cond_67
    const/4 v2, 0x0

    :goto_68
    packed-switch v2, :pswitch_data_da

    goto :goto_a2

    .line 113
    :pswitch_6c
    new-instance p1, Landroidx/media3/extractor/text/ttml/TtmlParser;

    invoke-direct {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;-><init>()V

    return-object p1

    .line 105
    :pswitch_72
    new-instance p1, Landroidx/media3/extractor/text/subrip/SubripParser;

    invoke-direct {p1}, Landroidx/media3/extractor/text/subrip/SubripParser;-><init>()V

    return-object p1

    .line 99
    :pswitch_78
    new-instance v0, Landroidx/media3/extractor/text/ssa/SsaParser;

    iget-object p1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, p1}, Landroidx/media3/extractor/text/ssa/SsaParser;-><init>(Ljava/util/List;)V

    return-object v0

    .line 107
    :pswitch_80
    new-instance v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;

    iget-object p1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, p1}, Landroidx/media3/extractor/text/tx3g/Tx3gParser;-><init>(Ljava/util/List;)V

    return-object v0

    .line 101
    :pswitch_88
    new-instance p1, Landroidx/media3/extractor/text/webvtt/WebvttParser;

    invoke-direct {p1}, Landroidx/media3/extractor/text/webvtt/WebvttParser;-><init>()V

    return-object p1

    .line 103
    :pswitch_8e
    new-instance p1, Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;

    invoke-direct {p1}, Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;-><init>()V

    return-object p1

    .line 109
    :pswitch_94
    new-instance p1, Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-direct {p1}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>()V

    return-object p1

    .line 111
    :pswitch_9a
    new-instance v0, Landroidx/media3/extractor/text/dvb/DvbParser;

    iget-object p1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, p1}, Landroidx/media3/extractor/text/dvb/DvbParser;-><init>(Ljava/util/List;)V

    return-object v0

    .line 118
    :cond_a2
    :goto_a2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported MIME type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_b8
    .sparse-switch
        -0x5091057c -> :sswitch_5e
        -0x4a6813e3 -> :sswitch_53
        -0x3d28a9ba -> :sswitch_48
        -0x3be2f26c -> :sswitch_3d
        0x2935f49f -> :sswitch_32
        0x310bebca -> :sswitch_27
        0x63771bad -> :sswitch_1c
        0x64f8068a -> :sswitch_11
    .end sparse-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_94
        :pswitch_8e
        :pswitch_88
        :pswitch_80
        :pswitch_78
        :pswitch_72
        :pswitch_6c
    .end packed-switch
.end method

.method public getCueReplacementBehavior(Landroidx/media3/common/Format;)I
    .registers 6

    .line 67
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p1, :cond_72

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_88

    goto/16 :goto_6a

    :sswitch_13
    const-string v0, "application/ttml+xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_6a

    :cond_1c
    const/4 v3, 0x7

    goto :goto_6a

    :sswitch_1e
    const-string v0, "application/x-subrip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_6a

    :cond_27
    const/4 v3, 0x6

    goto :goto_6a

    :sswitch_29
    const-string v0, "text/x-ssa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_6a

    :cond_32
    const/4 v3, 0x5

    goto :goto_6a

    :sswitch_34
    const-string v0, "application/x-quicktime-tx3g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_6a

    :cond_3d
    const/4 v3, 0x4

    goto :goto_6a

    :sswitch_3f
    const-string v0, "text/vtt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_6a

    :cond_48
    const/4 v3, 0x3

    goto :goto_6a

    :sswitch_4a
    const-string v0, "application/x-mp4-vtt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_6a

    :cond_53
    move v3, v1

    goto :goto_6a

    :sswitch_55
    const-string v0, "application/pgs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_6a

    :cond_5e
    move v3, v2

    goto :goto_6a

    :sswitch_60
    const-string v0, "application/dvbsubs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_6a

    :cond_69
    const/4 v3, 0x0

    :goto_6a
    packed-switch v3, :pswitch_data_aa

    goto :goto_72

    :pswitch_6e
    return v2

    :pswitch_6f
    return v1

    :pswitch_70
    return v2

    :pswitch_71
    return v1

    .line 90
    :cond_72
    :goto_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported MIME type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_88
    .sparse-switch
        -0x5091057c -> :sswitch_60
        -0x4a6813e3 -> :sswitch_55
        -0x3d28a9ba -> :sswitch_4a
        -0x3be2f26c -> :sswitch_3f
        0x2935f49f -> :sswitch_34
        0x310bebca -> :sswitch_29
        0x63771bad -> :sswitch_1e
        0x64f8068a -> :sswitch_13
    .end sparse-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
    .end packed-switch
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)Z
    .registers 3

    .line 54
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "text/x-ssa"

    .line 55
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "text/vtt"

    .line 56
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "application/x-mp4-vtt"

    .line 57
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "application/x-subrip"

    .line 58
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "application/x-quicktime-tx3g"

    .line 59
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "application/pgs"

    .line 60
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "application/dvbsubs"

    .line 61
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "application/ttml+xml"

    .line 62
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_45

    :cond_43
    const/4 p1, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    const/4 p1, 0x1

    :goto_46
    return p1
.end method
