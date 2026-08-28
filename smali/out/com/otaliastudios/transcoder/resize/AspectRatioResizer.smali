.class public Lcom/otaliastudios/transcoder/resize/AspectRatioResizer;
.super Ljava/lang/Object;
.source "AspectRatioResizer.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/resize/Resizer;


# instance fields
.field private final aspectRatio:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/otaliastudios/transcoder/resize/AspectRatioResizer;->aspectRatio:F

    return-void
.end method


# virtual methods
.method public getOutputSize(Lcom/otaliastudios/transcoder/common/Size;)Lcom/otaliastudios/transcoder/common/Size;
    .registers 6

    .line 27
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/Size;->getMajor()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/Size;->getMinor()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 28
    iget v1, p0, Lcom/otaliastudios/transcoder/resize/AspectRatioResizer;->aspectRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_14

    goto :goto_16

    :cond_14
    div-float v1, v2, v1

    :goto_16
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2b

    .line 32
    new-instance v0, Lcom/otaliastudios/transcoder/common/Size;

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/Size;->getMinor()I

    move-result v2

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/Size;->getMinor()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-direct {v0, v2, p1}, Lcom/otaliastudios/transcoder/common/Size;-><init>(II)V

    return-object v0

    :cond_2b
    cmpg-float v0, v0, v1

    if-gez v0, :cond_40

    .line 35
    new-instance v0, Lcom/otaliastudios/transcoder/common/Size;

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/Size;->getMajor()I

    move-result v2

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/Size;->getMajor()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int p1, p1

    invoke-direct {v0, v2, p1}, Lcom/otaliastudios/transcoder/common/Size;-><init>(II)V

    return-object v0

    :cond_40
    return-object p1
.end method
