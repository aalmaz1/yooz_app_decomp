.class public interface abstract Landroidx/camera/core/ImageAnalysis$Analyzer;
.super Ljava/lang/Object;
.source "ImageAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Analyzer"
.end annotation


# virtual methods
.method public abstract analyze(Landroidx/camera/core/ImageProxy;)V
.end method

.method public getDefaultTargetResolution()Landroid/util/Size;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetCoordinateSystem()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public updateTransform(Landroid/graphics/Matrix;)V
    .registers 2

    return-void
.end method
