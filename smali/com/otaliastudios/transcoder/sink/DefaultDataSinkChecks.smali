.class Lcom/otaliastudios/transcoder/sink/DefaultDataSinkChecks;
.super Ljava/lang/Object;
.source "DefaultDataSinkChecks.java"


# static fields
.field private static final LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "DefaultDataSinkChecks"

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/otaliastudios/transcoder/sink/DefaultDataSinkChecks;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkAudioOutputFormat(Landroid/media/MediaFormat;)V
    .registers 5

    const-string v0, "mime"

    .line 65
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "audio/mp4a-latm"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 67
    :cond_f
    new-instance v0, Lcom/otaliastudios/transcoder/sink/InvalidOutputFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio codecs other than AAC is not supported, actual mime type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/sink/InvalidOutputFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkVideoOutputFormat(Landroid/media/MediaFormat;)V
    .registers 5

    const-string v0, "mime"

    .line 42
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/avc"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 54
    invoke-static {p1}, Lcom/otaliastudios/transcoder/internal/utils/AvcCsdUtils;->getSpsBuffer(Landroid/media/MediaFormat;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/otaliastudios/transcoder/internal/utils/AvcSpsUtils;->getProfileIdc(Ljava/nio/ByteBuffer;)B

    move-result p1

    .line 56
    invoke-static {p1}, Lcom/otaliastudios/transcoder/internal/utils/AvcSpsUtils;->getProfileName(B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    const-string v2, "Output H.264 profile: "

    if-ne p1, v1, :cond_33

    .line 58
    sget-object p1, Lcom/otaliastudios/transcoder/sink/DefaultDataSinkChecks;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    goto :goto_4b

    .line 60
    :cond_33
    sget-object p1, Lcom/otaliastudios/transcoder/sink/DefaultDataSinkChecks;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". This might not be supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->w(Ljava/lang/String;)V

    :goto_4b
    return-void

    .line 46
    :cond_4c
    new-instance p1, Lcom/otaliastudios/transcoder/sink/InvalidOutputFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video codecs other than AVC is not supported, actual mime type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/otaliastudios/transcoder/sink/InvalidOutputFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method checkOutputFormat(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)V
    .registers 4

    .line 34
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    if-ne p1, v0, :cond_8

    .line 35
    invoke-direct {p0, p2}, Lcom/otaliastudios/transcoder/sink/DefaultDataSinkChecks;->checkVideoOutputFormat(Landroid/media/MediaFormat;)V

    goto :goto_f

    .line 36
    :cond_8
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    if-ne p1, v0, :cond_f

    .line 37
    invoke-direct {p0, p2}, Lcom/otaliastudios/transcoder/sink/DefaultDataSinkChecks;->checkAudioOutputFormat(Landroid/media/MediaFormat;)V

    :cond_f
    :goto_f
    return-void
.end method
