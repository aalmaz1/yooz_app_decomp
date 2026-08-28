.class public Landroidx/media3/extractor/metadata/flac/VorbisComment;
.super Ljava/lang/Object;
.source "VorbisComment.java"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/extractor/metadata/flac/VorbisComment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 120
    new-instance v0, Landroidx/media3/extractor/metadata/flac/VorbisComment$1;

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/flac/VorbisComment$1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 95
    :cond_12
    check-cast p1, Landroidx/media3/extractor/metadata/flac/VorbisComment;

    .line 96
    iget-object v2, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/extractor/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 102
    iget-object v0, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 103
    iget-object v0, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V
    .registers 5

    .line 61
    iget-object v0, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_66

    goto :goto_44

    :sswitch_e
    const-string v1, "ARTIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_44

    :cond_17
    const/4 v2, 0x4

    goto :goto_44

    :sswitch_19
    const-string v1, "ALBUMARTIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_44

    :cond_22
    const/4 v2, 0x3

    goto :goto_44

    :sswitch_24
    const-string v1, "DESCRIPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_44

    :cond_2d
    const/4 v2, 0x2

    goto :goto_44

    :sswitch_2f
    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_44

    :cond_38
    const/4 v2, 0x1

    goto :goto_44

    :sswitch_3a
    const-string v1, "ALBUM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    :goto_44
    packed-switch v2, :pswitch_data_7c

    goto :goto_65

    .line 66
    :pswitch_48
    iget-object v0, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    goto :goto_65

    .line 72
    :pswitch_4e
    iget-object v0, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    goto :goto_65

    .line 75
    :pswitch_54
    iget-object v0, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    goto :goto_65

    .line 63
    :pswitch_5a
    iget-object v0, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    goto :goto_65

    .line 69
    :pswitch_60
    iget-object v0, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    :goto_65
    return-void

    :sswitch_data_66
    .sparse-switch
        0x3b7864f -> :sswitch_3a
        0x4c22a38 -> :sswitch_2f
        0x198917dc -> :sswitch_24
        0x681d2256 -> :sswitch_19
        0x7395d347 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5a
        :pswitch_54
        :pswitch_4e
        :pswitch_48
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VC: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 111
    iget-object p2, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
