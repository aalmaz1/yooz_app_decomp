.class synthetic Landroidx/camera/video/Recorder$8;
.super Ljava/lang/Object;
.source "Recorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$camera$video$Recorder$AudioState:[I

.field static final synthetic $SwitchMap$androidx$camera$video$Recorder$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1560
    invoke-static {}, Landroidx/camera/video/Recorder$AudioState;->values()[Landroidx/camera/video/Recorder$AudioState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/camera/video/Recorder$8;->$SwitchMap$androidx$camera$video$Recorder$AudioState:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Landroidx/camera/video/Recorder$AudioState;->ERROR_ENCODER:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {v2}, Landroidx/camera/video/Recorder$AudioState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Landroidx/camera/video/Recorder$8;->$SwitchMap$androidx$camera$video$Recorder$AudioState:[I

    sget-object v3, Landroidx/camera/video/Recorder$AudioState;->ERROR_SOURCE:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {v3}, Landroidx/camera/video/Recorder$AudioState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Landroidx/camera/video/Recorder$8;->$SwitchMap$androidx$camera$video$Recorder$AudioState:[I

    sget-object v4, Landroidx/camera/video/Recorder$AudioState;->ENABLED:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {v4}, Landroidx/camera/video/Recorder$AudioState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Landroidx/camera/video/Recorder$8;->$SwitchMap$androidx$camera$video$Recorder$AudioState:[I

    sget-object v5, Landroidx/camera/video/Recorder$AudioState;->DISABLED:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {v5}, Landroidx/camera/video/Recorder$AudioState;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Landroidx/camera/video/Recorder$8;->$SwitchMap$androidx$camera$video$Recorder$AudioState:[I

    sget-object v6, Landroidx/camera/video/Recorder$AudioState;->IDLING:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {v6}, Landroidx/camera/video/Recorder$AudioState;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    const/4 v5, 0x6

    :try_start_3f
    sget-object v6, Landroidx/camera/video/Recorder$8;->$SwitchMap$androidx$camera$video$Recorder$AudioState:[I

    sget-object v7, Landroidx/camera/video/Recorder$AudioState;->INITIALIZING:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {v7}, Landroidx/camera/video/Recorder$AudioState;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    .line 697
    :catch_49
    invoke-static {}, Landroidx/camera/video/Recorder$State;->values()[Landroidx/camera/video/Recorder$State;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Landroidx/camera/video/Recorder$8;->$SwitchMap$androidx$camera$video$Recorder$State:[I

    :try_start_52
    sget-object v7, Landroidx/camera/video/Recorder$State;->PAUSED:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v7}, Landroidx/camera/video/Recorder$State;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5a
    sget-object v1, Landroidx/camera/video/Recorder$8;->$SwitchMap$androidx$camera$video$Recorder$State:[I

    sget-object v6, Landroidx/camera/video/Recorder$State;->RECORDING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v6}, Landroidx/camera/video/Recorder$State;->ordinal()I

    move-result v6

    aput v0, v1, v6
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    :catch_64
    :try_start_64
    sget-object v0, Landroidx/camera/video/Recorder$8;->$SwitchMap$androidx$camera$video$Recorder$State:[I

    sget-object v1, Landroidx/camera/video/Recorder$State;->PENDING_PAUSED:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v1}, Landroidx/camera/video/Recorder$State;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v0, Landroidx/camera/video/Recorder$8;->$SwitchMap$androidx$camera$video$Recorder$State:[I

    sget-object v1, Landroidx/camera/video/Recorder$State;->PENDING_RECORDING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v1}, Landroidx/camera/video/Recorder$State;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Landroidx/camera/video/Recorder$8;->$SwitchMap$androidx$camera$video$Recorder$State:[I

    sget-object v1, Landroidx/camera/video/Recorder$State;->RESETTING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v1}, Landroidx/camera/video/Recorder$State;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_82} :catch_82

    :catch_82
    :try_start_82
    sget-object v0, Landroidx/camera/video/Recorder$8;->$SwitchMap$androidx$camera$video$Recorder$State:[I

    sget-object v1, Landroidx/camera/video/Recorder$State;->STOPPING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v1}, Landroidx/camera/video/Recorder$State;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_8c} :catch_8c

    :catch_8c
    :try_start_8c
    sget-object v0, Landroidx/camera/video/Recorder$8;->$SwitchMap$androidx$camera$video$Recorder$State:[I

    sget-object v1, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v1}, Landroidx/camera/video/Recorder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_97} :catch_97

    :catch_97
    :try_start_97
    sget-object v0, Landroidx/camera/video/Recorder$8;->$SwitchMap$androidx$camera$video$Recorder$State:[I

    sget-object v1, Landroidx/camera/video/Recorder$State;->ERROR:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v1}, Landroidx/camera/video/Recorder$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a3} :catch_a3

    :catch_a3
    :try_start_a3
    sget-object v0, Landroidx/camera/video/Recorder$8;->$SwitchMap$androidx$camera$video$Recorder$State:[I

    sget-object v1, Landroidx/camera/video/Recorder$State;->IDLING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v1}, Landroidx/camera/video/Recorder$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_af} :catch_af

    :catch_af
    return-void
.end method
