.class public Lcom/otaliastudios/transcoder/internal/utils/BitRates;
.super Ljava/lang/Object;
.source "BitRates.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static estimateAudioBitRate(II)J
    .registers 6

    int-to-long v0, p1

    const/16 p1, 0x10

    int-to-long v2, p1

    mul-long/2addr v2, v0

    int-to-long p0, p0

    mul-long/2addr v2, p0

    const-wide/high16 p0, 0x3fe8000000000000L    # 0.75

    long-to-double v0, v2

    mul-double/2addr v0, p0

    double-to-long p0, v0

    return-wide p0
.end method

.method public static estimateVideoBitRate(III)J
    .registers 4

    const v0, 0x3e0f5c29    # 0.14f

    int-to-float p0, p0

    mul-float/2addr p0, v0

    int-to-float p1, p1

    mul-float/2addr p0, p1

    int-to-float p1, p2

    mul-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method
