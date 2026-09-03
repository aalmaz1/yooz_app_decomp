.class public Lcom/king/camera/scan/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static areUVPlanesNV21([Landroid/media/Image$Plane;II)Z
    .locals 5

    mul-int/2addr p1, p2

    const/4 p2, 0x1

    .line 227
    aget-object v0, p0, p2

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x2

    .line 228
    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 232
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    .line 235
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v4, v3, -0x1

    .line 237
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 241
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    mul-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x4

    sub-int/2addr p1, v1

    if-ne v4, p1, :cond_0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 244
    :goto_0
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 245
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return p2
.end method

.method public static getBitmap(Landroidx/camera/core/ImageProxy;)Landroid/graphics/Bitmap;
    .locals 3

    .line 77
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v1

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/king/camera/scan/util/BitmapUtils;->yuv420ThreePlanesToNV21([Landroid/media/Image$Plane;II)[B

    move-result-object v0

    .line 78
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v1

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v2

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/ImageInfo;->getRotationDegrees()I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lcom/king/camera/scan/util/BitmapUtils;->getBitmap(Ljava/nio/ByteBuffer;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/nio/ByteBuffer;III)Landroid/graphics/Bitmap;
    .locals 8

    .line 52
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 53
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v2, v0, [B

    const/4 v7, 0x0

    .line 54
    invoke-virtual {p0, v2, v7, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 56
    :try_start_0
    new-instance p0, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 58
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p1, 0x50

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 61
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-static {p0, v7, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 64
    invoke-static {p0, p3, v7, v7}, Lcom/king/camera/scan/util/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/king/camera/scan/util/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBitmap([BLcom/king/camera/scan/FrameMetadata;)Landroid/graphics/Bitmap;
    .locals 2

    .line 44
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/king/camera/scan/FrameMetadata;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/king/camera/scan/FrameMetadata;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/king/camera/scan/FrameMetadata;->getRotation()I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lcom/king/camera/scan/util/BitmapUtils;->getBitmap(Ljava/nio/ByteBuffer;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmapFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-static {p0, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 111
    :cond_0
    invoke-static {p0, p1}, Lcom/king/camera/scan/util/BitmapUtils;->getExifOrientationTag(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result p0

    const/16 p1, -0x5a

    const/16 v1, 0x5a

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p0, :pswitch_data_0

    move p1, v2

    :goto_0
    move v3, p1

    goto :goto_2

    :pswitch_0
    move p1, v1

    goto :goto_1

    :pswitch_1
    move p1, v1

    :pswitch_2
    move v4, v3

    move v3, v2

    move v2, v4

    goto :goto_2

    :pswitch_3
    move p1, v2

    goto :goto_2

    :pswitch_4
    const/16 p1, 0xb4

    :goto_1
    :pswitch_5
    move v3, v2

    goto :goto_2

    :pswitch_6
    move p1, v2

    move v2, v3

    goto :goto_0

    .line 148
    :goto_2
    invoke-static {v0, p1, v2, v3}, Lcom/king/camera/scan/util/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private static getExifOrientationTag(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 3

    const-string v0, "content"

    .line 156
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "file"

    .line 157
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 162
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_2

    if-eqz p0, :cond_1

    .line 168
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    .line 167
    :cond_2
    :try_start_1
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    .line 168
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    const-string p0, "Orientation"

    const/4 p1, 0x1

    .line 173
    invoke-virtual {v0, p0, p1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_4

    .line 162
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "failed to open file to read rotation meta data: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/king/camera/scan/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private static rotateBitmap(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;
    .locals 7

    .line 86
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 89
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    .line 92
    :goto_1
    invoke-virtual {v5, p2, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_2

    .line 98
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object p1
.end method

.method private static unpackPlane(Landroid/media/Image$Plane;II[BII)V
    .locals 7

    .line 258
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 263
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    div-int/2addr v1, v2

    if-nez v1, :cond_0

    return-void

    .line 267
    :cond_0
    div-int/2addr p2, v1

    .line 268
    div-int/2addr p1, p2

    const/4 p2, 0x0

    move v2, p2

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    move v4, p2

    move v5, v3

    :goto_1
    if-ge v4, p1, :cond_1

    .line 276
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    aput-byte v6, p3, p4

    add-int/2addr p4, p5

    .line 278
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 280
    :cond_1
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static yuv420ThreePlanesToNV21([Landroid/media/Image$Plane;II)[B
    .locals 12

    mul-int v4, p1, p2

    .line 196
    div-int/lit8 v0, v4, 0x4

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/2addr v0, v4

    new-array v11, v0, [B

    .line 198
    invoke-static {p0, p1, p2}, Lcom/king/camera/scan/util/BitmapUtils;->areUVPlanesNV21([Landroid/media/Image$Plane;II)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 200
    aget-object p1, p0, v2

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v11, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 202
    aget-object p1, p0, v3

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 203
    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 205
    invoke-virtual {p0, v11, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 p0, v4, 0x1

    mul-int/2addr v4, v1

    .line 207
    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v4, v3

    invoke-virtual {p1, v11, p0, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 211
    :cond_0
    aget-object v5, p0, v2

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v6, p1

    move v7, p2

    move-object v8, v11

    invoke-static/range {v5 .. v10}, Lcom/king/camera/scan/util/BitmapUtils;->unpackPlane(Landroid/media/Image$Plane;II[BII)V

    .line 213
    aget-object v5, p0, v3

    add-int/lit8 v9, v4, 0x1

    const/4 v10, 0x2

    invoke-static/range {v5 .. v10}, Lcom/king/camera/scan/util/BitmapUtils;->unpackPlane(Landroid/media/Image$Plane;II[BII)V

    .line 215
    aget-object v0, p0, v1

    const/4 v5, 0x2

    move v1, p1

    move v2, p2

    move-object v3, v11

    invoke-static/range {v0 .. v5}, Lcom/king/camera/scan/util/BitmapUtils;->unpackPlane(Landroid/media/Image$Plane;II[BII)V

    :goto_0
    return-object v11
.end method
