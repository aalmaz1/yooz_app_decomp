.class synthetic Landroidx/camera/video/internal/audio/AudioSource$3;
.super Ljava/lang/Object;
.source "AudioSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/audio/AudioSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$camera$video$internal$audio$AudioSource$InternalState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 383
    invoke-static {}, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->values()[Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/camera/video/internal/audio/AudioSource$3;->$SwitchMap$androidx$camera$video$internal$audio$AudioSource$InternalState:[I

    :try_start_9
    sget-object v1, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->CONFIGURED:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {v1}, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Landroidx/camera/video/internal/audio/AudioSource$3;->$SwitchMap$androidx$camera$video$internal$audio$AudioSource$InternalState:[I

    sget-object v1, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->STARTED:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {v1}, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Landroidx/camera/video/internal/audio/AudioSource$3;->$SwitchMap$androidx$camera$video$internal$audio$AudioSource$InternalState:[I

    sget-object v1, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->RELEASED:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {v1}, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
