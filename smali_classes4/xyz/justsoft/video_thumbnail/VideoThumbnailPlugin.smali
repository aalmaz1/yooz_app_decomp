.class public Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;
.super Ljava/lang/Object;
.source "VideoThumbnailPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field private static final HIGH_QUALITY_MIN_VAL:I = 0x46

.field private static TAG:Ljava/lang/String; = "ThumbnailPlugin"


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private context:Landroid/content/Context;

.field private executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$mbuildThumbnailData(Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;Ljava/lang/String;Ljava/util/HashMap;IIIII)[B
    .locals 0

    invoke-direct/range {p0 .. p7}, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->buildThumbnailData(Ljava/lang/String;Ljava/util/HashMap;IIIII)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuildThumbnailFile(Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IIIII)Ljava/lang/String;
    .locals 0

    invoke-direct/range {p0 .. p8}, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->buildThumbnailFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monResult(Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->onResult(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;ZLjava/lang/Exception;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildThumbnailData(Ljava/lang/String;Ljava/util/HashMap;IIIII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IIIII)[B"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    .line 123
    invoke-virtual/range {v0 .. v5}, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->createVideoThumbnail(Ljava/lang/String;Ljava/util/HashMap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    invoke-static {p3}, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->intToFormat(I)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p3

    invoke-virtual {p1, p3, p7, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private buildThumbnailFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IIIII)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IIIII)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 140
    invoke-direct/range {v1 .. v8}, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->buildThumbnailData(Ljava/lang/String;Ljava/util/HashMap;IIIII)[B

    move-result-object v1

    .line 141
    invoke-static {p4}, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->formatExt(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    .line 142
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    add-int/2addr v3, v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    .line 144
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "file://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v5

    :goto_1
    if-nez p3, :cond_2

    if-nez v0, :cond_2

    move-object v7, p0

    .line 147
    iget-object v0, v7, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v7, p0

    move-object v0, p3

    :goto_2
    if-eqz v0, :cond_5

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v3, v0

    goto :goto_3

    .line 155
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 157
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/2addr v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 160
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    :cond_5
    :goto_3
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 168
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 169
    sget-object v0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->TAG:Ljava/lang/String;

    const-string v2, "buildThumbnailFile( written:%d )"

    new-array v4, v5, [Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 172
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static formatExt(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "jpg"

    return-object p0

    :cond_0
    const-string p0, "webp"

    return-object p0

    :cond_1
    const-string p0, "png"

    return-object p0
.end method

.method private static intToFormat(I)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 99
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 103
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 101
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method private onResult(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;ZLjava/lang/Exception;)V
    .locals 7

    .line 178
    new-instance v6, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$2;-><init>(Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;ZLio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Exception;Ljava/lang/Object;)V

    invoke-static {v6}, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 198
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static setDataSource(Ljava/lang/String;Landroid/media/MediaMetadataRetriever;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    new-instance p0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public createVideoThumbnail(Ljava/lang/String;Ljava/util/HashMap;III)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;III)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 212
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    const-string v0, "/"

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {p1, v6}, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->setDataSource(Ljava/lang/String;Landroid/media/MediaMetadataRetriever;)V

    goto :goto_1

    :cond_0
    const-string v0, "file://"

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x7

    .line 217
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->setDataSource(Ljava/lang/String;Landroid/media/MediaMetadataRetriever;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    .line 219
    :cond_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-virtual {v6, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    const/4 p1, 0x3

    if-nez p3, :cond_4

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    mul-int/lit16 p5, p5, 0x3e8

    int-to-long p2, p5

    .line 243
    invoke-virtual {v6, p2, p3, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    mul-int/lit16 p5, p5, 0x3e8

    int-to-long v1, p5

    const/4 v3, 0x3

    move-object v0, v6

    move v4, p4

    move v5, p3

    .line 225
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_3

    :cond_5
    mul-int/lit16 p5, p5, 0x3e8

    int-to-long v0, p5

    .line 228
    invoke-virtual {v6, v0, v1, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 230
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 231
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    if-nez p4, :cond_6

    int-to-float p4, p3

    int-to-float v0, p5

    div-float/2addr p4, v0

    int-to-float v0, p2

    mul-float/2addr p4, v0

    .line 233
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    :cond_6
    if-nez p3, :cond_7

    int-to-float p3, p4

    int-to-float v0, p2

    div-float/2addr p3, v0

    int-to-float v0, p5

    mul-float/2addr p3, v0

    .line 236
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 238
    :cond_7
    sget-object v0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->TAG:Ljava/lang/String;

    const-string v1, "original w:%d, h:%d => %d, %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p5, 0x1

    aput-object p2, v2, p5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {v7, p4, p3, p5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_8
    move-object p1, v7

    .line 253
    :goto_3
    :try_start_1
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    .line 255
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_8

    :catch_2
    move-exception p1

    .line 250
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    :try_start_3
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    goto :goto_5

    :catch_5
    move-exception p1

    .line 248
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 253
    :try_start_5
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_6

    :catch_6
    move-exception p1

    goto :goto_5

    :catch_7
    move-exception p1

    goto :goto_5

    :catch_8
    move-exception p1

    .line 246
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 253
    :try_start_7
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_6

    :catch_9
    move-exception p1

    goto :goto_5

    :catch_a
    move-exception p1

    .line 255
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    move-object p1, v7

    :goto_7
    return-object p1

    .line 253
    :goto_8
    :try_start_8
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_a

    :catch_b
    move-exception p2

    goto :goto_9

    :catch_c
    move-exception p2

    .line 255
    :goto_9
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    :goto_a
    throw p1
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 42
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->context:Landroid/content/Context;

    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->executor:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "plugins.justsoft.xyz/video_thumbnail"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 45
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 51
    iput-object v0, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 52
    iget-object p1, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 53
    iput-object v0, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 13

    .line 58
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    const-string v0, "video"

    .line 60
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "headers"

    .line 61
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/HashMap;

    const-string v0, "format"

    .line 62
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v0, "maxh"

    .line 63
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v0, "maxw"

    .line 64
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v0, "timeMs"

    .line 65
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v0, "quality"

    .line 66
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 67
    iget-object v3, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 69
    iget-object p1, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;

    move-object v1, v0

    move-object v2, p0

    move-object v12, p2

    invoke-direct/range {v1 .. v12}, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;-><init>(Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/HashMap;IIIIILio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
