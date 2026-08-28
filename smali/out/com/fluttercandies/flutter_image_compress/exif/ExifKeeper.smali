.class public Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;
.super Ljava/lang/Object;
.source "ExifKeeper.java"


# static fields
.field private static final attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final oldExif:Landroidx/exifinterface/media/ExifInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    const-string v0, "FNumber"

    const-string v1, "ExposureTime"

    const-string v2, "ISOSpeedRatings"

    const-string v3, "GPSAltitude"

    const-string v4, "GPSAltitudeRef"

    const-string v5, "FocalLength"

    const-string v6, "GPSDateStamp"

    const-string v7, "WhiteBalance"

    const-string v8, "GPSProcessingMethod"

    const-string v9, "GPSTimeStamp"

    const-string v10, "DateTime"

    const-string v11, "Flash"

    const-string v12, "GPSLatitude"

    const-string v13, "GPSLatitudeRef"

    const-string v14, "GPSLongitude"

    const-string v15, "GPSLongitudeRef"

    const-string v16, "Make"

    const-string v17, "Model"

    .line 22
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;->attributes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;->oldExif:Landroidx/exifinterface/media/ExifInterface;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;->oldExif:Landroidx/exifinterface/media/ExifInterface;

    return-void
.end method

.method private static copyExif(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;)V
    .registers 4

    .line 54
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    invoke-static {p0, p1, v1}, Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;->setIfNotNull(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;Ljava/lang/String;)V

    goto :goto_6

    .line 58
    :cond_16
    :try_start_16
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method

.method private static setIfNotNull(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;Ljava/lang/String;)V
    .registers 4

    .line 64
    invoke-virtual {p0, p2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 65
    invoke-virtual {p0, p2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public copyExifToFile(Ljava/io/File;)V
    .registers 3

    .line 109
    :try_start_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;->oldExif:Landroidx/exifinterface/media/ExifInterface;

    invoke-static {p1, v0}, Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;->copyExif(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;)V

    .line 111
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method public writeToOutputStream(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .registers 7

    const/4 v0, 0x0

    .line 73
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_5f

    .line 76
    :try_start_2a
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/commons/io/IOUtils;->write([BLjava/io/OutputStream;)V

    .line 77
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 78
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;->oldExif:Landroidx/exifinterface/media/ExifInterface;

    invoke-static {v3, v1}, Lcom/fluttercandies/flutter_image_compress/exif/ExifKeeper;->copyExif(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;)V

    .line 80
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V

    .line 81
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 82
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_52} :catch_5b

    .line 84
    :try_start_52
    invoke-static {v3, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 85
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_58} :catch_59

    return-object v1

    :catch_59
    move-exception v0

    goto :goto_63

    :catch_5b
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_63

    :catch_5f
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 88
    :goto_63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error preserving Exif data on selected image: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifDataCopier"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_81

    .line 92
    :try_start_79
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_81

    :catch_7d
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_81
    :goto_81
    if-eqz p1, :cond_8b

    .line 99
    :try_start_83
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_8b

    :catch_87
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8b
    :goto_8b
    return-object p2
.end method
