.class public Lcom/otaliastudios/transcoder/internal/audio/remix/DownMixAudioRemixer;
.super Ljava/lang/Object;
.source "DownMixAudioRemixer.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;


# static fields
.field private static final SIGNED_SHORT_LIMIT:I = 0x8000

.field private static final UNSIGNED_SHORT_MAX:I = 0xffff


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemixedSize(I)I
    .locals 0

    .line 49
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public remix(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V
    .locals 7

    .line 23
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 24
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 29
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v2

    const v3, 0x8000

    add-int/2addr v2, v3

    .line 30
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    add-int/2addr v4, v3

    const v5, 0xffff

    if-lt v2, v3, :cond_1

    if-ge v4, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int v6, v2, v4

    mul-int/lit8 v6, v6, 0x2

    mul-int/2addr v2, v4

    .line 39
    div-int/2addr v2, v3

    sub-int/2addr v6, v2

    sub-int/2addr v6, v5

    goto :goto_2

    :cond_1
    :goto_1
    mul-int/2addr v2, v4

    .line 36
    div-int v6, v2, v3

    :goto_2
    const/high16 v2, 0x10000

    if-ne v6, v2, :cond_2

    goto :goto_3

    :cond_2
    move v5, v6

    :goto_3
    sub-int/2addr v5, v3

    int-to-short v2, v5

    .line 43
    invoke-virtual {p2, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
