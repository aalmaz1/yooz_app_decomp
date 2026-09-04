.class public Lcom/otaliastudios/transcoder/resize/AtMostResizer;
.super Ljava/lang/Object;
.source "AtMostResizer.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/resize/Resizer;


# instance fields
.field private final atMostMajor:I

.field private final atMostMinor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/otaliastudios/transcoder/resize/AtMostResizer;->atMostMinor:I

    const p1, 0x7fffffff

    .line 23
    iput p1, p0, Lcom/otaliastudios/transcoder/resize/AtMostResizer;->atMostMajor:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/otaliastudios/transcoder/resize/AtMostResizer;->atMostMinor:I

    .line 33
    iput p2, p0, Lcom/otaliastudios/transcoder/resize/AtMostResizer;->atMostMajor:I

    return-void
.end method


# virtual methods
.method public getOutputSize(Lcom/otaliastudios/transcoder/common/Size;)Lcom/otaliastudios/transcoder/common/Size;
    .locals 3

    .line 39
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/Size;->getMinor()I

    move-result v0

    iget v1, p0, Lcom/otaliastudios/transcoder/resize/AtMostResizer;->atMostMinor:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/Size;->getMajor()I

    move-result v0

    iget v1, p0, Lcom/otaliastudios/transcoder/resize/AtMostResizer;->atMostMajor:I

    if-gt v0, v1, :cond_0

    return-object p1

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/Size;->getMinor()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/otaliastudios/transcoder/resize/AtMostResizer;->atMostMinor:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 45
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/Size;->getMajor()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/otaliastudios/transcoder/resize/AtMostResizer;->atMostMajor:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 46
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/Size;->getMinor()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/Size;->getMajor()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    cmpl-float p1, v1, v0

    if-ltz p1, :cond_1

    .line 48
    iget p1, p0, Lcom/otaliastudios/transcoder/resize/AtMostResizer;->atMostMajor:I

    int-to-float v0, p1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 51
    :cond_1
    iget v0, p0, Lcom/otaliastudios/transcoder/resize/AtMostResizer;->atMostMinor:I

    int-to-float p1, v0

    div-float/2addr p1, v2

    float-to-int p1, p1

    .line 54
    :goto_0
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 55
    :cond_2
    rem-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 56
    :cond_3
    new-instance v1, Lcom/otaliastudios/transcoder/common/Size;

    invoke-direct {v1, v0, p1}, Lcom/otaliastudios/transcoder/common/Size;-><init>(II)V

    return-object v1
.end method
