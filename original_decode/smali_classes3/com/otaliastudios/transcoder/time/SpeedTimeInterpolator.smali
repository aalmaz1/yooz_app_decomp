.class public Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator;
.super Ljava/lang/Object;
.source "SpeedTimeInterpolator.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/time/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;


# instance fields
.field private final mFactor:D

.field private final mTrackData:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "SpeedTimeInterpolator"

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;-><init>(Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$1;)V

    new-instance v2, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;

    invoke-direct {v2, v1}, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;-><init>(Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$1;)V

    invoke-static {v0, v2}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->trackMapOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator;->mTrackData:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    float-to-double v0, p1

    .line 33
    iput-wide v0, p0, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator;->mFactor:D

    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid speed factor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFactor()F
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator;->mFactor:D

    double-to-float v0, v0

    return v0
.end method

.method public interpolate(Lcom/otaliastudios/transcoder/common/TrackType;J)J
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator;->mTrackData:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-interface {v0, p1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;

    .line 48
    invoke-static {v0}, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;->access$100(Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 49
    invoke-static {v0, p2, p3}, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;->access$102(Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;J)J

    .line 50
    invoke-static {v0, p2, p3}, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;->access$202(Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;J)J

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v0}, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;->access$100(Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;)J

    move-result-wide v1

    sub-long v1, p2, v1

    long-to-double v1, v1

    .line 53
    iget-wide v3, p0, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator;->mFactor:D

    div-double/2addr v1, v3

    double-to-long v1, v1

    .line 54
    invoke-static {v0, p2, p3}, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;->access$102(Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;J)J

    .line 55
    invoke-static {v0, v1, v2}, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;->access$214(Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;J)J

    .line 57
    :goto_0
    sget-object v1, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Track:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " inputTime:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " outputTime:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;->access$200(Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 58
    invoke-static {v0}, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;->access$200(Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator$TrackData;)J

    move-result-wide p1

    return-wide p1
.end method
