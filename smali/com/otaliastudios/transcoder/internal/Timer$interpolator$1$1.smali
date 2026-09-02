.class public final Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;
.super Ljava/lang/Object;
.source "Timer.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/time/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/Timer;->interpolator(Lcom/otaliastudios/transcoder/common/TrackType;I)Lcom/otaliastudios/transcoder/time/TimeInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "com/otaliastudios/transcoder/internal/Timer$interpolator$1$1",
        "Lcom/otaliastudios/transcoder/time/TimeInterpolator;",
        "firstIn",
        "",
        "firstOut",
        "lastOut",
        "interpolate",
        "type",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "time",
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
.field final synthetic $index:I

.field final synthetic $type:Lcom/otaliastudios/transcoder/common/TrackType;

.field private firstIn:J

.field private final firstOut:J

.field private lastOut:J

.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/Timer;


# direct methods
.method constructor <init>(ILcom/otaliastudios/transcoder/internal/Timer;Lcom/otaliastudios/transcoder/common/TrackType;)V
    .registers 6

    iput p1, p0, Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;->$index:I

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;->this$0:Lcom/otaliastudios/transcoder/internal/Timer;

    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;->$type:Lcom/otaliastudios/transcoder/common/TrackType;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 75
    iput-wide v0, p0, Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;->firstIn:J

    if-nez p1, :cond_15

    const-wide/16 p1, 0x0

    goto :goto_33

    .line 80
    :cond_15
    invoke-static {p2}, Lcom/otaliastudios/transcoder/internal/Timer;->access$getInterpolators$p(Lcom/otaliastudios/transcoder/internal/Timer;)Ljava/util/Map;

    move-result-object p2

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    .line 81
    invoke-interface {p1, p3, v0, v1}, Lcom/otaliastudios/transcoder/time/TimeInterpolator;->interpolate(Lcom/otaliastudios/transcoder/common/TrackType;J)J

    move-result-wide p1

    const-wide/16 v0, 0xa

    add-long/2addr p1, v0

    .line 76
    :goto_33
    iput-wide p1, p0, Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;->firstOut:J

    return-void
.end method


# virtual methods
.method public interpolate(Lcom/otaliastudios/transcoder/common/TrackType;J)J
    .registers 8

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p2, v0

    if-nez v2, :cond_11

    .line 86
    iget-wide p1, p0, Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;->lastOut:J

    goto :goto_2d

    .line 88
    :cond_11
    iget-wide v2, p0, Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;->firstIn:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_19

    iput-wide p2, p0, Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;->firstIn:J

    .line 89
    :cond_19
    iget-wide v0, p0, Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;->firstOut:J

    iget-wide v2, p0, Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;->firstIn:J

    sub-long/2addr p2, v2

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;->lastOut:J

    .line 90
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;->this$0:Lcom/otaliastudios/transcoder/internal/Timer;

    invoke-static {p2}, Lcom/otaliastudios/transcoder/internal/Timer;->access$getInterpolator$p(Lcom/otaliastudios/transcoder/internal/Timer;)Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    move-result-object p2

    iget-wide v0, p0, Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;->lastOut:J

    invoke-interface {p2, p1, v0, v1}, Lcom/otaliastudios/transcoder/time/TimeInterpolator;->interpolate(Lcom/otaliastudios/transcoder/common/TrackType;J)J

    move-result-wide p1

    :goto_2d
    return-wide p1
.end method
