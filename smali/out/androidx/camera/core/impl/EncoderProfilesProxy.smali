.class public interface abstract Landroidx/camera/core/impl/EncoderProfilesProxy;
.super Ljava/lang/Object;
.source "EncoderProfilesProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;,
        Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;,
        Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;
    }
.end annotation


# static fields
.field public static final CODEC_PROFILE_NONE:I = -0x1


# direct methods
.method public static getAudioCodecMimeType(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_16

    const-string p0, "audio/none"

    return-object p0

    :pswitch_6
    const-string p0, "audio/opus"

    return-object p0

    :pswitch_9
    const-string p0, "audio/vorbis"

    return-object p0

    :pswitch_c
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :pswitch_f
    const-string p0, "audio/amr-wb"

    return-object p0

    :pswitch_12
    const-string p0, "audio/3gpp"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static getRequiredAudioProfile(I)I
    .registers 3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_f

    const/4 v0, 0x4

    const/4 v1, 0x5

    if-eq p0, v0, :cond_e

    if-eq p0, v1, :cond_b

    const/4 p0, -0x1

    return p0

    :cond_b
    const/16 p0, 0x27

    return p0

    :cond_e
    return v1

    :cond_f
    const/4 p0, 0x2

    return p0
.end method

.method public static getVideoCodecMimeType(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_28

    const-string/jumbo p0, "video/none"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "video/av01"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "video/dolby-vision"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "video/x-vnd.on2.vp9"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "video/hevc"

    return-object p0

    :pswitch_17
    const-string/jumbo p0, "video/x-vnd.on2.vp8"

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "video/mp4v-es"

    return-object p0

    :pswitch_1f
    const-string/jumbo p0, "video/avc"

    return-object p0

    :pswitch_23
    const-string/jumbo p0, "video/3gpp"

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public abstract getAudioProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultDurationSeconds()I
.end method

.method public abstract getRecommendedFileFormat()I
.end method

.method public abstract getVideoProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;",
            ">;"
        }
    .end annotation
.end method
