.class public Lcn/baos/watch/sdk/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static audioByteLenght:I

.field private static outputStream:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyConfigFinished(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 192
    invoke-static {p0, p1}, Lcn/baos/watch/sdk/util/FileUtils;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 193
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "has "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "?:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static copyDirToSDCardFromAsserts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 222
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 223
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {p2, v1}, Lcn/baos/watch/sdk/util/FileUtils;->outputStr(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz v1, :cond_b1

    .line 225
    array-length v2, v1

    if-lez v2, :cond_b1

    .line 226
    invoke-static {p0, p1}, Lcn/baos/watch/sdk/util/FileUtils;->getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1c

    const-string p0, "make dir failed!"

    .line 228
    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    :cond_1c
    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 237
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v3

    move-object v5, v4

    :goto_25
    if-ge v6, v2, :cond_8c

    aget-object v4, v1, v6

    .line 238
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "assets--absolute path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5a

    .line 241
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-nez v7, :cond_5a

    const-string p0, "create new file failed!"

    .line 243
    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 247
    :cond_5a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 248
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 249
    :goto_7a
    invoke-virtual {v4, p1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_85

    .line 250
    invoke-virtual {v7, p1, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_7a

    .line 252
    :cond_85
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    add-int/lit8 v6, v6, 0x1

    move-object v5, v7

    goto :goto_25

    :cond_8c
    if-eqz v4, :cond_91

    .line 257
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_91
    if-eqz v5, :cond_b1

    .line 260
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_96} :catch_97

    goto :goto_b1

    :catch_97
    move-exception p0

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "FileUtils:+"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b1
    :goto_b1
    return-void
.end method

.method public static createDirs(Ljava/lang/String;)Z
    .registers 3

    .line 363
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x1

    return p0

    .line 366
    :cond_14
    :goto_14
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "\u521b\u5efa\u6587\u4ef6\u5939\u6210\u529f\uff0cpath:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0
.end method

.method public static decodeHEX(Ljava/lang/String;)I
    .registers 3

    .line 200
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 201
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public static decodeHEXLong(Ljava/lang/String;)J
    .registers 3

    const/16 v0, 0x10

    .line 207
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static file2Bytes(Ljava/io/File;)[B
    .registers 5

    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 450
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 451
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 453
    :goto_e
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1a

    const/4 v3, 0x0

    .line 454
    invoke-virtual {p0, v1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    .line 456
    :cond_1a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 457
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 458
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    .line 460
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCachePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 355
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    invoke-static {}, Lcn/baos/watch/sdk/util/FileUtils;->isSDCardAvailable()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 295
    invoke-static {p0}, Lcn/baos/watch/sdk/util/FileUtils;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 297
    :cond_13
    invoke-static {p0}, Lcn/baos/watch/sdk/util/FileUtils;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :goto_1a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 314
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    invoke-static {}, Lcn/baos/watch/sdk/util/FileUtils;->isSDCardAvailable()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 317
    invoke-static {p0}, Lcn/baos/watch/sdk/util/FileUtils;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_18
    const-string v1, "sdcard \u4e0d\u5b58\u5728"

    .line 319
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 320
    invoke-static {p0}, Lcn/baos/watch/sdk/util/FileUtils;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :goto_24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 325
    invoke-static {p0}, Lcn/baos/watch/sdk/util/FileUtils;->createDirs(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_37

    return-object p0

    .line 328
    :cond_37
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u521b\u5efa\u6587\u4ef6\u5939\u5931\u8d25\uff0c\u8bf7\u6253\u5f00app\u8bfb\u5199\u672c\u5730\u6570\u636e\u6743\u9650\uff0c\u4e4b\u540e\u91cd\u8bd5\uff01path:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSDCardAvailable()Z
    .registers 2

    const-string v0, "mounted"

    .line 181
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private static outputStr(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_41

    .line 277
    array-length v0, p1

    const-string v1, "assets "

    if-gtz v0, :cond_1e

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " has no folder!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_41

    .line 280
    :cond_1e
    array-length v0, p1

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v0, :cond_41

    aget-object v3, p1, v2

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_41
    :goto_41
    return-void
.end method

.method public static saveAudioByteInSdcard_close()V
    .registers 1

    .line 424
    sget-boolean v0, Lcn/baos/watch/sdk/entitiy/Constant;->isLocalSave:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "saveAudioByteInSdcard_close"

    .line 427
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 429
    :try_start_b
    sput v0, Lcn/baos/watch/sdk/util/FileUtils;->audioByteLenght:I

    .line 430
    sget-object v0, Lcn/baos/watch/sdk/util/FileUtils;->outputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_21

    .line 431
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 432
    sget-object v0, Lcn/baos/watch/sdk/util/FileUtils;->outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    .line 433
    sput-object v0, Lcn/baos/watch/sdk/util/FileUtils;->outputStream:Ljava/io/FileOutputStream;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_21
    :goto_21
    return-void
.end method

.method public static saveAudioByteInSdcard_create(Landroid/content/Context;)V
    .registers 7

    const-string v0, "\u521b\u5efacreate_audio_path:"

    const-string v1, "audio"

    const-string v2, "\u65e5\u5fd7\u8def\u5f84:"

    .line 379
    sget-boolean v3, Lcn/baos/watch/sdk/entitiy/Constant;->isLocalSave:Z

    if-nez v3, :cond_b

    return-void

    .line 383
    :cond_b
    :try_start_b
    sget-object v3, Lcn/baos/watch/sdk/util/FileUtils;->outputStream:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_1a

    .line 384
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 385
    sget-object v3, Lcn/baos/watch/sdk/util/FileUtils;->outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    const/4 v3, 0x0

    .line 386
    sput-object v3, Lcn/baos/watch/sdk/util/FileUtils;->outputStream:Ljava/io/FileOutputStream;

    .line 388
    :cond_1a
    invoke-static {p0, v1}, Lcn/baos/watch/sdk/util/FileUtils;->getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 390
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".opus"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 392
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object p0, Lcn/baos/watch/sdk/util/FileUtils;->outputStream:Ljava/io/FileOutputStream;
    :try_end_65
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_65} :catch_6b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_65} :catch_66

    goto :goto_6f

    :catch_66
    move-exception p0

    .line 396
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6f

    :catch_6b
    move-exception p0

    .line 394
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_6f
    return-void
.end method

.method public static saveAudioByteInSdcard_write([B)V
    .registers 4

    .line 406
    sget-boolean v0, Lcn/baos/watch/sdk/entitiy/Constant;->isLocalSave:Z

    if-nez v0, :cond_5

    return-void

    .line 409
    :cond_5
    sget v0, Lcn/baos/watch/sdk/util/FileUtils;->audioByteLenght:I

    array-length v1, p0

    add-int/2addr v0, v1

    sput v0, Lcn/baos/watch/sdk/util/FileUtils;->audioByteLenght:I

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "audioByteLenght:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcn/baos/watch/sdk/util/FileUtils;->audioByteLenght:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "write byte:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcn/baos/watch/sdk/util/W100Utils;->byte2hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 412
    :try_start_2d
    sget-object v0, Lcn/baos/watch/sdk/util/FileUtils;->outputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_3b

    .line 413
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p0

    .line 416
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 40
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_2e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_24
    .catchall {:try_start_1 .. :try_end_b} :catchall_22

    .line 41
    :try_start_b
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 42
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_15} :catch_1f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_1c
    .catchall {:try_start_b .. :try_end_15} :catchall_19

    .line 50
    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_38

    goto :goto_3c

    :catchall_19
    move-exception p0

    move-object v0, v1

    goto :goto_3d

    :catch_1c
    move-exception p0

    move-object v0, v1

    goto :goto_25

    :catch_1f
    move-exception p0

    move-object v0, v1

    goto :goto_2f

    :catchall_22
    move-exception p0

    goto :goto_3d

    :catch_24
    move-exception p0

    .line 46
    :goto_25
    :try_start_25
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    if-eqz v0, :cond_3c

    .line 50
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_38

    goto :goto_3c

    :catch_2e
    move-exception p0

    .line 44
    :goto_2f
    :try_start_2f
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_22

    if-eqz v0, :cond_3c

    .line 50
    :try_start_34
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3c
    :goto_3c
    return-void

    :goto_3d
    if-eqz v0, :cond_47

    .line 50
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 55
    :cond_47
    :goto_47
    throw p0
.end method

.method public static writeValueToLocal(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 467
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/baos/watch/sdk/util/FileUtils$1;

    invoke-direct {v1, p0, p1}, Lcn/baos/watch/sdk/util/FileUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 511
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static writeZplValueToLocal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 516
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/baos/watch/sdk/util/FileUtils$2;

    invoke-direct {v1, p0, p1, p2}, Lcn/baos/watch/sdk/util/FileUtils$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 560
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const-string v0, "_data"

    .line 135
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 138
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_32

    if-eqz p1, :cond_2c

    .line 140
    :try_start_15
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 141
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 142
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_29

    if-eqz p1, :cond_28

    .line 146
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_28
    return-object p2

    :catchall_29
    move-exception p2

    move-object v7, p1

    goto :goto_33

    :cond_2c
    if-eqz p1, :cond_31

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_31
    return-object v7

    :catchall_32
    move-exception p2

    :goto_33
    if-eqz v7, :cond_38

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_38
    throw p2
.end method

.method public getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 8

    .line 68
    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9f

    .line 70
    invoke-virtual {p0, p2}, Lcn/baos/watch/sdk/util/FileUtils;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v0

    const-string v2, ":"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_41

    .line 71
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 73
    aget-object p2, p1, v4

    const-string v0, "primary"

    .line 75
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c1

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-object p1, p1, v3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 80
    :cond_41
    invoke-virtual {p0, p2}, Lcn/baos/watch/sdk/util/FileUtils;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 82
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "content://downloads/public_downloads"

    .line 84
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 83
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 86
    invoke-virtual {p0, p1, p2, v1, v1}, Lcn/baos/watch/sdk/util/FileUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 89
    :cond_62
    invoke-virtual {p0, p2}, Lcn/baos/watch/sdk/util/FileUtils;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 90
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 91
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 92
    aget-object v0, p2, v4

    const-string v2, "image"

    .line 95
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 96
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_92

    :cond_7d
    const-string v2, "video"

    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 98
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_92

    :cond_88
    const-string v2, "audio"

    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 100
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_92
    :goto_92
    new-array v0, v3, [Ljava/lang/String;

    .line 104
    aget-object p2, p2, v3

    aput-object p2, v0, v4

    const-string p2, "_id=?"

    .line 106
    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/baos/watch/sdk/util/FileUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9f
    const-string v0, "content"

    .line 110
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 111
    invoke-virtual {p0, p1, p2, v1, v1}, Lcn/baos/watch/sdk/util/FileUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b0
    const-string p1, "file"

    .line 114
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 115
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c1
    return-object v1
.end method

.method public isDownloadsDocument(Landroid/net/Uri;)Z
    .registers 3

    const-string v0, "com.android.providers.downloads.documents"

    .line 164
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isExternalStorageDocument(Landroid/net/Uri;)Z
    .registers 3

    const-string v0, "com.android.externalstorage.documents"

    .line 156
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMediaDocument(Landroid/net/Uri;)Z
    .registers 3

    const-string v0, "com.android.providers.media.documents"

    .line 172
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
