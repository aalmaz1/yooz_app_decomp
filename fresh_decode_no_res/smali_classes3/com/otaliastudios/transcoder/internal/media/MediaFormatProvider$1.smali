.class synthetic Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider$1;
.super Ljava/lang/Object;
.source "MediaFormatProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$otaliastudios$transcoder$common$TrackType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    invoke-static {}, Lcom/otaliastudios/transcoder/common/TrackType;->values()[Lcom/otaliastudios/transcoder/common/TrackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider$1;->$SwitchMap$com$otaliastudios$transcoder$common$TrackType:[I

    :try_start_0
    sget-object v1, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/common/TrackType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider$1;->$SwitchMap$com$otaliastudios$transcoder$common$TrackType:[I

    sget-object v1, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/common/TrackType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
