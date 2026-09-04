.class public final Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;
.super Ljava/lang/Object;
.source "CommonHandler.kt"

# interfaces
.implements Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J:\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0003H\u0002JP\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u0003H\u0016JX\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;",
        "Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;",
        "type",
        "",
        "(I)V",
        "bitmapFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "getType",
        "()I",
        "typeName",
        "",
        "getTypeName",
        "()Ljava/lang/String;",
        "compress",
        "",
        "arr",
        "minWidth",
        "minHeight",
        "quality",
        "rotate",
        "inSampleSize",
        "handleByteArray",
        "",
        "context",
        "Landroid/content/Context;",
        "byteArray",
        "outputStream",
        "Ljava/io/OutputStream;",
        "keepExif",
        "",
        "handleFile",
        "path",
        "numberOfRetries",
        "flutter_image_compress_common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bitmapFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final type:I

.field private final typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;->type:I

    .line 16
    invoke-virtual {p0}, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;->getType()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const-string p1, "jpeg"

    goto :goto_0

    :cond_0
    const-string p1, "webp"

    goto :goto_0

    :cond_1
    const-string p1, "png"

    :goto_0
    iput-object p1, p0, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;->typeName:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;->getType()I

    move-result p1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    .line 25
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 24
    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 23
    :cond_3
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 22
    :goto_1
    iput-object p1, p0, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;->bitmapFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method private final compress([BIIIII)[B
    .locals 4

    .line 61
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 63
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 64
    iput p6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 69
    array-length p6, p1

    invoke-static {p1, v1, p6, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 70
    new-instance p6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "src width = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fluttercandies/flutter_image_compress/logger/LogExtKt;->log(Ljava/lang/Object;)V

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "src height = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fluttercandies/flutter_image_compress/logger/LogExtKt;->log(Ljava/lang/Object;)V

    .line 75
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p2, p3}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->calcScale(Landroid/graphics/Bitmap;II)F

    move-result p2

    .line 76
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "scale = "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/fluttercandies/flutter_image_compress/logger/LogExtKt;->log(Ljava/lang/Object;)V

    div-float/2addr v0, p2

    div-float/2addr v1, p2

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "dst width = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/fluttercandies/flutter_image_compress/logger/LogExtKt;->log(Ljava/lang/Object;)V

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "dst height = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/fluttercandies/flutter_image_compress/logger/LogExtKt;->log(Ljava/lang/Object;)V

    float-to-int p2, v0

    float-to-int p3, v1

    const/4 v0, 0x1

    .line 81
    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "createScaledBitmap(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-static {p1, p5}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;->bitmapFormat:Landroid/graphics/Bitmap$CompressFormat;

    move-object p3, p6

    check-cast p3, Ljava/io/OutputStream;

    invoke-virtual {p1, p2, p4, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 86
    invoke-virtual {p6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string p2, "toByteArray(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic compress$default(Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;[BIIIIIILjava/lang/Object;)[B
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 53
    invoke-direct/range {v0 .. v6}, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;->compress([BIIIII)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;->type:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public handleByteArray(Landroid/content/Context;[BLjava/io/OutputStream;IIIIZI)V
    .locals 10

    move-object v0, p1

    move-object v8, p2

    move-object v9, p3

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "byteArray"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "outputStream"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    .line 39
    invoke-direct/range {v1 .. v7}, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;->compress([BIIIII)[B

    move-result-object v1

    move-object v2, p0

    if-eqz p8, :cond_0

    .line 40
    iget-object v3, v2, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;->bitmapFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v3, v4, :cond_0

    .line 41
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 42
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 43
    new-instance v1, Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;

    invoke-direct {v1, p2}, Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;-><init>([B)V

    invoke-virtual {v1, p1, v3}, Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;->writeToOutputStream(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public handleFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;IIIIZII)V
    .locals 12

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v0, p9

    const-string v4, "context"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "path"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "outputStream"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-gtz p10, :cond_0

    return-void

    .line 104
    :cond_0
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x0

    .line 105
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 106
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 107
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 112
    invoke-static {p2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 113
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;->getType()I

    move-result v11

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v6 .. v11}, Lcom/fluttercandies/flutter_image_compress/ext/BitmapCompressExtKt;->compress(Landroid/graphics/Bitmap;IIIII)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p8, :cond_1

    move-object v11, p0

    .line 114
    :try_start_1
    iget-object v5, v11, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;->bitmapFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v5, v6, :cond_2

    .line 115
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 117
    new-instance v4, Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;

    invoke-direct {v4, p2}, Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v5}, Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;->writeToOutputStream(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 121
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    move-object v11, p0

    .line 123
    :cond_2
    invoke-virtual {p3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v11, p0

    .line 126
    :catch_1
    invoke-static {}, Ljava/lang/System;->gc()V

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v10, p10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 127
    invoke-virtual/range {v0 .. v10}, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;->handleFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;IIIIZII)V

    :goto_0
    return-void
.end method
