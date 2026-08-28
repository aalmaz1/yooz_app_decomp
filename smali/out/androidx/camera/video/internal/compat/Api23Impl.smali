.class public final Landroidx/camera/video/internal/compat/Api23Impl;
.super Ljava/lang/Object;
.source "Api23Impl.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/media/AudioRecord$Builder;)Landroid/media/AudioRecord;
    .registers 1

    .line 82
    invoke-virtual {p0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p0

    return-object p0
.end method

.method public static createAudioRecordBuilder()Landroid/media/AudioRecord$Builder;
    .registers 1

    .line 41
    new-instance v0, Landroid/media/AudioRecord$Builder;

    invoke-direct {v0}, Landroid/media/AudioRecord$Builder;-><init>()V

    return-object v0
.end method

.method public static setAudioFormat(Landroid/media/AudioRecord$Builder;Landroid/media/AudioFormat;)V
    .registers 2

    .line 61
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    return-void
.end method

.method public static setAudioSource(Landroid/media/AudioRecord$Builder;I)V
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    return-void
.end method

.method public static setBufferSizeInBytes(Landroid/media/AudioRecord$Builder;I)V
    .registers 2

    .line 71
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    return-void
.end method
