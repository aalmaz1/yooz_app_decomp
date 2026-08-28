.class Landroidx/media3/exoplayer/image/ImageOutput$1;
.super Ljava/lang/Object;
.source "ImageOutput.java"

# interfaces
.implements Landroidx/media3/exoplayer/image/ImageOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/image/ImageOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisabled()V
    .registers 1

    return-void
.end method

.method public onImageAvailable(JLandroid/graphics/Bitmap;)V
    .registers 4

    return-void
.end method
