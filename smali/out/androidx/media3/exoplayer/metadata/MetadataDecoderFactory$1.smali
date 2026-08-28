.class Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"

# interfaces
.implements Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/metadata/MetadataDecoder;
    .registers 5

    .line 78
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p1, :cond_68

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_7e

    goto :goto_46

    :sswitch_10
    const-string v0, "application/x-scte35"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_46

    :cond_19
    const/4 v1, 0x4

    goto :goto_46

    :sswitch_1b
    const-string v0, "application/x-emsg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_46

    :cond_24
    const/4 v1, 0x3

    goto :goto_46

    :sswitch_26
    const-string v0, "application/id3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_46

    :cond_2f
    const/4 v1, 0x2

    goto :goto_46

    :sswitch_31
    const-string v0, "application/x-icy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_46

    :cond_3a
    const/4 v1, 0x1

    goto :goto_46

    :sswitch_3c
    const-string v0, "application/vnd.dvb.ait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    :goto_46
    packed-switch v1, :pswitch_data_94

    goto :goto_68

    .line 86
    :pswitch_4a
    new-instance p1, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;

    invoke-direct {p1}, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;-><init>()V

    return-object p1

    .line 84
    :pswitch_50
    new-instance p1, Landroidx/media3/extractor/metadata/emsg/EventMessageDecoder;

    invoke-direct {p1}, Landroidx/media3/extractor/metadata/emsg/EventMessageDecoder;-><init>()V

    return-object p1

    .line 82
    :pswitch_56
    new-instance p1, Landroidx/media3/extractor/metadata/id3/Id3Decoder;

    invoke-direct {p1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;-><init>()V

    return-object p1

    .line 88
    :pswitch_5c
    new-instance p1, Landroidx/media3/extractor/metadata/icy/IcyDecoder;

    invoke-direct {p1}, Landroidx/media3/extractor/metadata/icy/IcyDecoder;-><init>()V

    return-object p1

    .line 90
    :pswitch_62
    new-instance p1, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTableDecoder;

    invoke-direct {p1}, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTableDecoder;-><init>()V

    return-object p1

    .line 95
    :cond_68
    :goto_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to create decoder for unsupported MIME type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_7e
    .sparse-switch
        -0x50bb4913 -> :sswitch_3c
        -0x505c61b5 -> :sswitch_31
        -0x4a682ec7 -> :sswitch_26
        0x44ce7ed0 -> :sswitch_1b
        0x62816bb7 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5c
        :pswitch_56
        :pswitch_50
        :pswitch_4a
    .end packed-switch
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)Z
    .registers 3

    .line 68
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "application/id3"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "application/x-emsg"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "application/x-scte35"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "application/x-icy"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "application/vnd.dvb.ait"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p1, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    :goto_2e
    return p1
.end method
