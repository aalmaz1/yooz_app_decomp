.class public Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;
.super Ljava/lang/Object;
.source "WatchImageUtil.java"


# instance fields
.field public IMG_DEFAULT_HEIGHT:I

.field public IMG_DEFAULT_WIDTH:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf0

    .line 61
    iput v0, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_WIDTH:I

    const/16 v0, 0x118

    .line 62
    iput v0, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_HEIGHT:I

    return-void
.end method

.method private getWatchDialImg(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 354
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 355
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 357
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    int-to-float v1, v3

    div-float/2addr p2, v1

    int-to-float p3, p3

    mul-float/2addr p3, v0

    int-to-float v0, v4

    div-float/2addr p3, v0

    .line 358
    invoke-virtual {v5, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 359
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5305\u8868\u76d8\u53c2\u6570-\u56fe\u7247\u4fdd\u5b58\u8def\u5f84:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 371
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 372
    :try_start_1
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 373
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 377
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 381
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_3
    move-exception p1

    .line 375
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    .line 381
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception p1

    .line 383
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_1

    .line 381
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception p2

    .line 383
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 386
    :cond_1
    :goto_4
    throw p1
.end method

.method private static sp2px(Landroid/content/Context;F)F
    .locals 0

    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public compressImage152176(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 162
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 164
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 165
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 166
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 167
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 168
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6253\u5305\u8868\u76d8\u53c2\u6570-\u539f\u56fe\u7247\u7684\u5bbd:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u56fe\u7247\u7684\u957f:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u56fe\u7247\u7684\u683c\u5f0f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u56fe\u7247\u5927\u5c0f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    const/16 v0, 0x98

    const/16 v1, 0xb0

    .line 171
    invoke-direct {p0, p2, v0, v1}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->getWatchDialImg(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "imgCropper"

    .line 174
    invoke-static {p1, v1}, Lcn/baos/watch/sdk/utils/FileUtils;->getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5305\u8868\u76d8\u53c2\u6570-\u76ee\u6807\u9884\u89c8\u56fe\u7247\u7684\u5bbd:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " \u9884\u89c8\u56fe\u7247\u7684\u957f:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " \u9884\u89c8\u56fe\u7247\u7684\u683c\u5f0f:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 178
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " \u9884\u89c8\u56fe\u7247\u5927\u5c0f:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 183
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compressImage240280(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    .line 127
    iput p3, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_WIDTH:I

    .line 128
    iput p4, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_HEIGHT:I

    .line 131
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 133
    sget-object p4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p4, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 134
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 135
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 136
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    .line 137
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6253\u5305\u8868\u76d8\u53c2\u6570-\u539f\u56fe\u7247\u7684\u5bbd:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " \u56fe\u7247\u7684\u957f:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " \u56fe\u7247\u7684\u683c\u5f0f:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " \u56fe\u7247\u5927\u5c0f:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 140
    iget p3, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_WIDTH:I

    iget v2, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_HEIGHT:I

    invoke-direct {p0, p2, p3, v2}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->getWatchDialImg(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p3

    const-string v2, "imgCropper"

    .line 143
    invoke-static {p1, v2}, Lcn/baos/watch/sdk/utils/FileUtils;->getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".jpg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u6253\u5305\u8868\u76d8\u53c2\u6570-\u76ee\u6807\u56fe\u7247\u7684\u5bbd:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 147
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 152
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compressImage240280Small(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    .line 71
    iput p3, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_WIDTH:I

    .line 72
    iput p4, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_HEIGHT:I

    .line 81
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 83
    sget-object p4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p4, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 84
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 85
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 86
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    .line 87
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6253\u5305\u8868\u76d8\u53c2\u6570-\u539f\u56fe\u7247\u7684\u5bbd:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " \u56fe\u7247\u7684\u957f:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " \u56fe\u7247\u7684\u683c\u5f0f:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " \u56fe\u7247\u5927\u5c0f:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 90
    iget p3, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_WIDTH:I

    iget v2, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_HEIGHT:I

    invoke-direct {p0, p2, p3, v2}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->getWatchDialImg(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p3

    const-string v2, "imgCropper"

    .line 93
    invoke-static {p1, v2}, Lcn/baos/watch/sdk/utils/FileUtils;->getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".jpg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u6253\u5305\u8868\u76d8\u53c2\u6570-\u76ee\u6807\u56fe\u7247\u7684\u5bbd:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 97
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compressList(Landroid/content/Context;Ljava/util/List;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 52
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 53
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p1, v1, p3, p4}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->compressImage240280(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public drawControlOnCompressed(Landroid/content/Context;Ljava/lang/String;Lcn/baos/watch/w100/messages/Wallpaper_info;II)Ljava/lang/String;
    .locals 6

    .line 209
    iput p4, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_WIDTH:I

    .line 210
    iput p5, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_HEIGHT:I

    .line 213
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 215
    sget-object p5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p5, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 216
    invoke-static {p2, p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 219
    iget p4, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_WIDTH:I

    iget p5, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_HEIGHT:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 220
    new-instance p5, Landroid/graphics/Canvas;

    invoke-direct {p5, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 221
    invoke-virtual {p5, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 227
    iget-object p3, p3, Lcn/baos/watch/w100/messages/Wallpaper_info;->controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    .line 228
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    if-eqz p3, :cond_3

    const/4 v1, 0x0

    .line 230
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_3

    .line 232
    aget-object v2, p3, v1

    iget v2, v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->id:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto/16 :goto_1

    .line 246
    :cond_0
    aget-object v2, p3, v1

    iget v2, v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->visible:I

    if-ne v2, v3, :cond_2

    const/high16 v2, 0x41980000    # 19.0f

    .line 248
    invoke-static {p1, v2}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->sp2px(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 249
    aget-object v2, p3, v1

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v2, v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->alpha:I

    aget-object v3, p3, v1

    iget-object v3, v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v3, v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->red:I

    aget-object v4, p3, v1

    iget-object v4, v4, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v4, v4, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->green:I

    aget-object v5, p3, v1

    iget-object v5, v5, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v5, v5, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->blue:I

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 251
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 252
    aget-object v3, p3, v1

    iget v3, v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->left:I

    int-to-float v3, v3

    aget-object v4, p3, v1

    iget v4, v4, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->top:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    const-string v4, "12:36"

    invoke-virtual {p5, v4, v3, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 234
    :cond_1
    aget-object v2, p3, v1

    iget v2, v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->visible:I

    if-ne v2, v3, :cond_2

    const/high16 v2, 0x41300000    # 11.0f

    .line 236
    invoke-static {p1, v2}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->sp2px(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 237
    aget-object v2, p3, v1

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v2, v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->alpha:I

    aget-object v3, p3, v1

    iget-object v3, v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v3, v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->red:I

    aget-object v4, p3, v1

    iget-object v4, v4, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v4, v4, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->green:I

    aget-object v5, p3, v1

    iget-object v5, v5, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v5, v5, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->blue:I

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 240
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 241
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->getWeekWithLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 242
    aget-object v4, p3, v1

    iget v4, v4, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->left:I

    int-to-float v4, v4

    aget-object v5, p3, v1

    iget v5, v5, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->top:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-virtual {p5, v3, v4, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    const-string p3, "imgCropper"

    .line 260
    invoke-static {p1, p3}, Lcn/baos/watch/sdk/utils/FileUtils;->getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 261
    new-instance p3, Ljava/io/File;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "mergeImageForPreview"

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, ".jpg"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p1, p5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p5, "\u6253\u5305\u8868\u76d8\u53c2\u6570-\u5408\u5e76\u56fe\u7247\u7684\u5bbd:"

    invoke-direct {p1, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, " \u56fe\u7247\u7684\u957f:"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, " \u56fe\u7247\u7684\u683c\u5f0f:"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 264
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p5

    invoke-virtual {p5}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, " \u56fe\u7247\u5927\u5c0f:"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 268
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    .line 270
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public drawControlOnCompressedSmall(Landroid/content/Context;Ljava/lang/String;Lcn/baos/watch/w100/messages/Wallpaper_info;)Ljava/lang/String;
    .locals 8

    const/16 v0, 0xf0

    .line 282
    iput v0, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_WIDTH:I

    const/16 v0, 0x118

    .line 283
    iput v0, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_HEIGHT:I

    .line 286
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 288
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 289
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 292
    iget v0, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_WIDTH:I

    iget v1, p0, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->IMG_DEFAULT_HEIGHT:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 293
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 294
    invoke-virtual {v1, p2, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 300
    iget-object p3, p3, Lcn/baos/watch/w100/messages/Wallpaper_info;->controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    .line 301
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    if-eqz p3, :cond_3

    const/4 v3, 0x0

    .line 303
    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_3

    .line 305
    aget-object v4, p3, v3

    iget v4, v4, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->id:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    goto/16 :goto_1

    .line 319
    :cond_0
    aget-object v4, p3, v3

    iget v4, v4, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->visible:I

    if-ne v4, v5, :cond_2

    const/high16 v4, 0x41980000    # 19.0f

    .line 321
    invoke-static {p1, v4}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->sp2px(Landroid/content/Context;F)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 322
    aget-object v4, p3, v3

    iget-object v4, v4, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v4, v4, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->alpha:I

    aget-object v5, p3, v3

    iget-object v5, v5, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v5, v5, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->red:I

    aget-object v6, p3, v3

    iget-object v6, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v6, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->green:I

    aget-object v7, p3, v3

    iget-object v7, v7, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v7, v7, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->blue:I

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 324
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 325
    aget-object v5, p3, v3

    iget v5, v5, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->left:I

    int-to-float v5, v5

    aget-object v6, p3, v3

    iget v6, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->top:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    const-string v6, "12:36"

    invoke-virtual {v1, v6, v5, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 307
    :cond_1
    aget-object v4, p3, v3

    iget v4, v4, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->visible:I

    if-ne v4, v5, :cond_2

    const/high16 v4, 0x41300000    # 11.0f

    .line 309
    invoke-static {p1, v4}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->sp2px(Landroid/content/Context;F)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 310
    aget-object v4, p3, v3

    iget-object v4, v4, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v4, v4, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->alpha:I

    aget-object v5, p3, v3

    iget-object v5, v5, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v5, v5, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->red:I

    aget-object v6, p3, v3

    iget-object v6, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v6, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->green:I

    aget-object v7, p3, v3

    iget-object v7, v7, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    iget v7, v7, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->blue:I

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 313
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 314
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->getWeekWithLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 315
    aget-object v6, p3, v3

    iget v6, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->left:I

    int-to-float v6, v6

    aget-object v7, p3, v3

    iget v7, v7, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->top:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    invoke-virtual {v1, v5, v6, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    const-string p3, "imgCropper"

    .line 333
    invoke-static {p1, p3}, Lcn/baos/watch/sdk/utils/FileUtils;->getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 334
    new-instance p3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mergeImageForPreview"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5305\u8868\u76d8\u53c2\u6570-\u5408\u5e76\u56fe\u7247\u7684\u5bbd:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " \u56fe\u7247\u7684\u957f:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " \u56fe\u7247\u7684\u683c\u5f0f:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 337
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " \u56fe\u7247\u5927\u5c0f:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 341
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 343
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWeekWithLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 390
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/base/AppDataConfig;->isWatchLuangh()Z

    move-result p1

    .line 391
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    .line 392
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    .line 393
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v2, ""

    if-eqz p1, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "\u5468\u516d"

    goto :goto_0

    :pswitch_1
    const-string p1, "\u5468\u4e94"

    goto :goto_0

    :pswitch_2
    const-string p1, "\u5468\u56db"

    goto :goto_0

    :pswitch_3
    const-string p1, "\u5468\u4e09"

    goto :goto_0

    :pswitch_4
    const-string p1, "\u5468\u4e8c"

    goto :goto_0

    :pswitch_5
    const-string p1, "\u5468\u4e00"

    goto :goto_0

    :pswitch_6
    const-string p1, "\u5468\u65e5"

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_0
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_7
    const-string v2, "Sat"

    goto :goto_1

    :pswitch_8
    const-string v2, "Fri"

    goto :goto_1

    :pswitch_9
    const-string v2, "Thu"

    goto :goto_1

    :pswitch_a
    const-string v2, "Wed"

    goto :goto_1

    :pswitch_b
    const-string v2, "Tue"

    goto :goto_1

    :pswitch_c
    const-string v2, "Mon"

    goto :goto_1

    :pswitch_d
    const-string v2, "Sun"

    .line 446
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
