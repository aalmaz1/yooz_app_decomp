.class synthetic Lcom/otaliastudios/transcoder/validator/WriteVideoValidator$1;
.super Ljava/lang/Object;
.source "WriteVideoValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/validator/WriteVideoValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$otaliastudios$transcoder$common$TrackStatus:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 17
    invoke-static {}, Lcom/otaliastudios/transcoder/common/TrackStatus;->values()[Lcom/otaliastudios/transcoder/common/TrackStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/otaliastudios/transcoder/validator/WriteVideoValidator$1;->$SwitchMap$com$otaliastudios$transcoder$common$TrackStatus:[I

    :try_start_9
    sget-object v1, Lcom/otaliastudios/transcoder/common/TrackStatus;->ABSENT:Lcom/otaliastudios/transcoder/common/TrackStatus;

    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/common/TrackStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/otaliastudios/transcoder/validator/WriteVideoValidator$1;->$SwitchMap$com$otaliastudios$transcoder$common$TrackStatus:[I

    sget-object v1, Lcom/otaliastudios/transcoder/common/TrackStatus;->REMOVING:Lcom/otaliastudios/transcoder/common/TrackStatus;

    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/common/TrackStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/otaliastudios/transcoder/validator/WriteVideoValidator$1;->$SwitchMap$com$otaliastudios$transcoder$common$TrackStatus:[I

    sget-object v1, Lcom/otaliastudios/transcoder/common/TrackStatus;->COMPRESSING:Lcom/otaliastudios/transcoder/common/TrackStatus;

    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/common/TrackStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/otaliastudios/transcoder/validator/WriteVideoValidator$1;->$SwitchMap$com$otaliastudios$transcoder$common$TrackStatus:[I

    sget-object v1, Lcom/otaliastudios/transcoder/common/TrackStatus;->PASS_THROUGH:Lcom/otaliastudios/transcoder/common/TrackStatus;

    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/common/TrackStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
