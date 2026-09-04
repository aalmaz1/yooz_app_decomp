.class public final Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;
.super Ljava/lang/Object;
.source "BitmapCompressExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0002\u001a\u001a\u0010\u0008\u001a\u00020\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003\u001a>\u0010\r\u001a\u00020\u0005*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003\u001a4\u0010\r\u001a\u00020\u0013*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003\u001a\u0012\u0010\u000f\u001a\u00020\n*\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0003\u00a8\u0006\u0014"
    }
    d2 = {
        "convertFormatIndexToFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "type",
        "",
        "log",
        "",
        "any",
        "",
        "calcScale",
        "",
        "Landroid/graphics/Bitmap;",
        "minWidth",
        "minHeight",
        "compress",
        "quality",
        "rotate",
        "outputStream",
        "Ljava/io/OutputStream;",
        "format",
        "",
        "flutter_image_compress_common_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final calcScale(Landroid/graphics/Bitmap;II)F
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 61
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr v0, p1

    int-to-float p1, p2

    div-float/2addr p0, p1

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "width scale = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->log(Ljava/lang/Object;)V

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "height scale = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->log(Ljava/lang/Object;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 66
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static final compress(Landroid/graphics/Bitmap;IIIILjava/io/OutputStream;I)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputStream"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 26
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "src width = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->log(Ljava/lang/Object;)V

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "src height = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->log(Ljava/lang/Object;)V

    .line 29
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->calcScale(Landroid/graphics/Bitmap;II)F

    move-result p1

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "scale = "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->log(Ljava/lang/Object;)V

    div-float/2addr v0, p1

    div-float/2addr v1, p1

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "dst width = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->log(Ljava/lang/Object;)V

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "dst height = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->log(Ljava/lang/Object;)V

    float-to-int p1, v0

    float-to-int p2, v1

    const/4 v0, 0x1

    .line 35
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createScaledBitmap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {p0, p4}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p6}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->convertFormatIndexToFormat(I)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    return-void
.end method

.method public static final compress(Landroid/graphics/Bitmap;IIIII)[B
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    move-object v6, v0

    check-cast v6, Ljava/io/OutputStream;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->compress(Landroid/graphics/Bitmap;IIIILjava/io/OutputStream;I)V

    .line 14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string p1, "toByteArray(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic compress$default(Landroid/graphics/Bitmap;IIIILjava/io/OutputStream;IILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    move v8, p6

    :goto_1
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p5

    .line 17
    invoke-static/range {v2 .. v8}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->compress(Landroid/graphics/Bitmap;IIIILjava/io/OutputStream;I)V

    return-void
.end method

.method public static synthetic compress$default(Landroid/graphics/Bitmap;IIIIIILjava/lang/Object;)[B
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->compress(Landroid/graphics/Bitmap;IIIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static final convertFormatIndexToFormat(I)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 73
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 72
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 71
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object p0
.end method

.method private static final log(Ljava/lang/Object;)V
    .locals 1

    .line 43
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->Companion:Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;

    invoke-virtual {v0}, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;->getShowLog()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 44
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static final rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    rem-int/lit16 v0, p1, 0x168

    if-eqz v0, :cond_0

    .line 50
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 51
    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 49
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method
