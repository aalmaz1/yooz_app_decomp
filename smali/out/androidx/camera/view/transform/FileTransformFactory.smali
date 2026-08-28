.class public final Landroidx/camera/view/transform/FileTransformFactory;
.super Ljava/lang/Object;
.source "FileTransformFactory.java"


# instance fields
.field private mUsingExifOrientation:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutputTransform(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/camera/view/transform/OutputTransform;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 87
    :try_start_4
    invoke-virtual {p0, p1}, Landroidx/camera/view/transform/FileTransformFactory;->getOutputTransform(Ljava/io/InputStream;)Landroidx/camera/view/transform/OutputTransform;

    move-result-object p2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_e

    if-eqz p1, :cond_d

    .line 88
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_d
    return-object p2

    :catchall_e
    move-exception p2

    if-eqz p1, :cond_19

    .line 86
    :try_start_11
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19
    :goto_19
    throw p2
.end method

.method public getOutputTransform(Ljava/io/File;)Landroidx/camera/view/transform/OutputTransform;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 97
    :try_start_5
    invoke-virtual {p0, v0}, Landroidx/camera/view/transform/FileTransformFactory;->getOutputTransform(Ljava/io/InputStream;)Landroidx/camera/view/transform/OutputTransform;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 98
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_d
    move-exception p1

    .line 96
    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw p1
.end method

.method public getOutputTransform(Ljava/io/InputStream;)Landroidx/camera/view/transform/OutputTransform;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-static {p1}, Landroidx/camera/core/impl/utils/Exif;->createFromInputStream(Ljava/io/InputStream;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object p1

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/camera/core/impl/utils/Exif;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroidx/camera/core/impl/utils/Exif;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 110
    invoke-static {v0}, Landroidx/camera/core/impl/utils/TransformUtils;->getNormalizedToBuffer(Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 112
    iget-boolean v2, p0, Landroidx/camera/view/transform/FileTransformFactory;->mUsingExifOrientation:Z

    if-eqz v2, :cond_2d

    .line 115
    invoke-virtual {p1}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    move-result v2

    invoke-virtual {p1}, Landroidx/camera/core/impl/utils/Exif;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroidx/camera/core/impl/utils/Exif;->getHeight()I

    move-result p1

    invoke-static {v2, v3, p1}, Landroidx/camera/core/impl/utils/TransformUtils;->getExifTransform(III)Landroid/graphics/Matrix;

    move-result-object p1

    .line 114
    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 118
    :cond_2d
    new-instance p1, Landroidx/camera/view/transform/OutputTransform;

    invoke-static {v0}, Landroidx/camera/core/impl/utils/TransformUtils;->rectToSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroidx/camera/view/transform/OutputTransform;-><init>(Landroid/graphics/Matrix;Landroid/util/Size;)V

    return-object p1
.end method

.method public isUsingExifOrientation()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Landroidx/camera/view/transform/FileTransformFactory;->mUsingExifOrientation:Z

    return v0
.end method

.method public setUsingExifOrientation(Z)V
    .registers 2

    .line 69
    iput-boolean p1, p0, Landroidx/camera/view/transform/FileTransformFactory;->mUsingExifOrientation:Z

    return-void
.end method
