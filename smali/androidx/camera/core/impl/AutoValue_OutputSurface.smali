.class final Landroidx/camera/core/impl/AutoValue_OutputSurface;
.super Landroidx/camera/core/impl/OutputSurface;
.source "AutoValue_OutputSurface.java"


# instance fields
.field private final imageFormat:I

.field private final size:Landroid/util/Size;

.field private final surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Landroid/view/Surface;Landroid/util/Size;I)V
    .registers 4

    .line 21
    invoke-direct {p0}, Landroidx/camera/core/impl/OutputSurface;-><init>()V

    if-eqz p1, :cond_16

    .line 25
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_OutputSurface;->surface:Landroid/view/Surface;

    if-eqz p2, :cond_e

    .line 29
    iput-object p2, p0, Landroidx/camera/core/impl/AutoValue_OutputSurface;->size:Landroid/util/Size;

    .line 30
    iput p3, p0, Landroidx/camera/core/impl/AutoValue_OutputSurface;->imageFormat:I

    return-void

    .line 27
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null size"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null surface"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 64
    :cond_4
    instance-of v1, p1, Landroidx/camera/core/impl/OutputSurface;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 65
    check-cast p1, Landroidx/camera/core/impl/OutputSurface;

    .line 66
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroidx/camera/core/impl/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_OutputSurface;->size:Landroid/util/Size;

    .line 67
    invoke-virtual {p1}, Landroidx/camera/core/impl/OutputSurface;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_OutputSurface;->imageFormat:I

    .line 68
    invoke-virtual {p1}, Landroidx/camera/core/impl/OutputSurface;->getImageFormat()I

    move-result p1

    if-ne v1, p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    return v0

    :cond_2e
    return v2
.end method

.method public getImageFormat()I
    .registers 2

    .line 47
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_OutputSurface;->imageFormat:I

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .registers 2

    .line 42
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_OutputSurface;->size:Landroid/util/Size;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .line 36
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_OutputSurface;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 77
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 79
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_OutputSurface;->size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 81
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_OutputSurface;->imageFormat:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OutputSurface{surface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_OutputSurface;->size:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_OutputSurface;->imageFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
