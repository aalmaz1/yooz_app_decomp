.class public final Lcom/otaliastudios/transcoder/internal/audio/ConversionsKt;
.super Ljava/lang/Object;
.source "conversions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\u001a\u0018\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0000\u001a \u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0000\u001a\u0018\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0000\u001a \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0000\u001a \u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0000\u001a \u0010\u000f\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "BYTES_PER_SAMPLE_PER_CHANNEL",
        "",
        "MICROSECONDS_PER_SECOND",
        "",
        "bitRate",
        "sampleRate",
        "channels",
        "bytesToUs",
        "bytes",
        "samplesToBytes",
        "samples",
        "shortsToUs",
        "shorts",
        "usToBytes",
        "us",
        "usToShorts",
        "lib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BYTES_PER_SAMPLE_PER_CHANNEL:I = 0x2

.field private static final MICROSECONDS_PER_SECOND:J = 0xf4240L


# direct methods
.method public static final bitRate(II)I
    .locals 0

    mul-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public static final bytesToUs(III)J
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    mul-int/2addr p1, p2

    const-wide/32 v0, 0xf4240

    int-to-long v2, p0

    mul-long/2addr v2, v0

    int-to-long p0, p1

    .line 15
    div-long/2addr v2, p0

    return-wide v2
.end method

.method public static final samplesToBytes(II)I
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    mul-int/2addr p0, p1

    return p0
.end method

.method public static final shortsToUs(III)J
    .locals 0

    mul-int/lit8 p0, p0, 0x2

    .line 35
    invoke-static {p0, p1, p2}, Lcom/otaliastudios/transcoder/internal/audio/ConversionsKt;->bytesToUs(III)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final usToBytes(JII)I
    .locals 0

    mul-int/lit8 p2, p2, 0x2

    mul-int/2addr p2, p3

    long-to-double p0, p0

    int-to-double p2, p2

    mul-double/2addr p0, p2

    const-wide/32 p2, 0xf4240

    long-to-double p2, p2

    div-double/2addr p0, p2

    .line 31
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static final usToShorts(JII)I
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/otaliastudios/transcoder/internal/audio/ConversionsKt;->usToBytes(JII)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method
