.class synthetic Landroidx/camera/video/VideoEncoderSession$2;
.super Ljava/lang/Object;
.source "VideoEncoderSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/VideoEncoderSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$camera$video$VideoEncoderSession$VideoEncoderState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 112
    invoke-static {}, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->values()[Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/camera/video/VideoEncoderSession$2;->$SwitchMap$androidx$camera$video$VideoEncoderSession$VideoEncoderState:[I

    :try_start_9
    sget-object v1, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->NOT_INITIALIZED:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v1}, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Landroidx/camera/video/VideoEncoderSession$2;->$SwitchMap$androidx$camera$video$VideoEncoderSession$VideoEncoderState:[I

    sget-object v1, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->INITIALIZING:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v1}, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Landroidx/camera/video/VideoEncoderSession$2;->$SwitchMap$androidx$camera$video$VideoEncoderSession$VideoEncoderState:[I

    sget-object v1, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->READY:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v1}, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Landroidx/camera/video/VideoEncoderSession$2;->$SwitchMap$androidx$camera$video$VideoEncoderSession$VideoEncoderState:[I

    sget-object v1, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->PENDING_RELEASE:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v1}, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Landroidx/camera/video/VideoEncoderSession$2;->$SwitchMap$androidx$camera$video$VideoEncoderSession$VideoEncoderState:[I

    sget-object v1, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->RELEASED:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v1}, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method
