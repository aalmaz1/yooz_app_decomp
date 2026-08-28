.class public final Lcom/otaliastudios/transcoder/internal/codec/DecoderTimer;
.super Lcom/otaliastudios/transcoder/internal/pipeline/DataStep;
.source "DecoderTimer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/DataStep<",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderData;",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J$\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\u000c\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderTimer;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/DataStep;",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderData;",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;",
        "track",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "interpolator",
        "Lcom/otaliastudios/transcoder/time/TimeInterpolator;",
        "(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/time/TimeInterpolator;)V",
        "lastRawTimeUs",
        "",
        "Ljava/lang/Long;",
        "lastTimeUs",
        "step",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State;",
        "state",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;",
        "fresh",
        "",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final interpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

.field private lastRawTimeUs:Ljava/lang/Long;

.field private lastTimeUs:Ljava/lang/Long;

.field private final track:Lcom/otaliastudios/transcoder/common/TrackType;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/time/TimeInterpolator;)V
    .registers 4

    const-string v0, "track"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/DataStep;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimer;->track:Lcom/otaliastudios/transcoder/common/TrackType;

    .line 19
    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimer;->interpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public step(Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;Z)Lcom/otaliastudios/transcoder/internal/pipeline/State;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok<",
            "Lcom/otaliastudios/transcoder/internal/codec/DecoderData;",
            ">;Z)",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State<",
            "Lcom/otaliastudios/transcoder/internal/codec/DecoderData;",
            ">;"
        }
    .end annotation

    const-string p2, "state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    instance-of p2, p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    if-eqz p2, :cond_c

    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object p1

    .line 27
    :cond_c
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimerData;

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_75

    .line 30
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;

    invoke-virtual {p2}, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;->getTimeUs()J

    move-result-wide v2

    .line 31
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimer;->interpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimer;->track:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {p2, v0, v2, v3}, Lcom/otaliastudios/transcoder/time/TimeInterpolator;->interpolate(Lcom/otaliastudios/transcoder/common/TrackType;J)J

    move-result-wide v4

    .line 32
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimer;->lastTimeUs:Ljava/lang/Long;

    if-nez p2, :cond_2f

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_46

    .line 37
    :cond_2f
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v4, v0

    .line 38
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimer;->lastRawTimeUs:Ljava/lang/Long;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    long-to-double v0, v0

    long-to-double v6, v6

    div-double/2addr v0, v6

    :goto_46
    move-wide v6, v0

    .line 41
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimer;->lastTimeUs:Ljava/lang/Long;

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimer;->lastRawTimeUs:Ljava/lang/Long;

    .line 44
    new-instance p2, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    new-instance v9, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimerData;

    .line 45
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;->getRelease()Lkotlin/jvm/functions/Function1;

    move-result-object v8

    move-object v0, v9

    .line 44
    invoke-direct/range {v0 .. v8}, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimerData;-><init>(Ljava/nio/ByteBuffer;JJDLkotlin/jvm/functions/Function1;)V

    invoke-direct {p2, v9}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object p2

    .line 27
    :cond_75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t apply DecoderTimer twice."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
