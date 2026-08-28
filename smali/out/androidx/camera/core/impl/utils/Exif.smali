.class public final Landroidx/camera/core/impl/utils/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/utils/Exif$Speed;
    }
.end annotation


# static fields
.field private static final ALL_EXIF_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATETIME_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final DO_NOT_COPY_EXIF_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_TIMESTAMP:J = -0x1L

.field private static final KILOMETERS_PER_HOUR:Ljava/lang/String; = "K"

.field private static final KNOTS:Ljava/lang/String; = "N"

.field private static final MILES_PER_HOUR:Ljava/lang/String; = "M"

.field private static final TAG:Ljava/lang/String; = "Exif"

.field private static final TIME_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExifInterface:Landroidx/exifinterface/media/ExifInterface;

.field private mRemoveTimestamp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 56
    new-instance v0, Landroidx/camera/core/impl/utils/Exif$1;

    invoke-direct {v0}, Landroidx/camera/core/impl/utils/Exif$1;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/utils/Exif;->DATE_FORMAT:Ljava/lang/ThreadLocal;

    .line 63
    new-instance v0, Landroidx/camera/core/impl/utils/Exif$2;

    invoke-direct {v0}, Landroidx/camera/core/impl/utils/Exif$2;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/utils/Exif;->TIME_FORMAT:Ljava/lang/ThreadLocal;

    .line 70
    new-instance v0, Landroidx/camera/core/impl/utils/Exif$3;

    invoke-direct {v0}, Landroidx/camera/core/impl/utils/Exif$3;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/utils/Exif;->DATETIME_FORMAT:Ljava/lang/ThreadLocal;

    .line 83
    invoke-static {}, Landroidx/camera/core/impl/utils/Exif;->getAllExifTags()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/utils/Exif;->ALL_EXIF_TAGS:Ljava/util/List;

    const-string v1, "ImageWidth"

    const-string v2, "ImageLength"

    const-string v3, "PixelXDimension"

    const-string v4, "PixelYDimension"

    const-string v5, "Compression"

    const-string v6, "JPEGInterchangeFormat"

    const-string v7, "JPEGInterchangeFormatLength"

    const-string v8, "ThumbnailImageLength"

    const-string v9, "ThumbnailImageWidth"

    const-string v10, "ThumbnailOrientation"

    .line 85
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/utils/Exif;->DO_NOT_COPY_EXIF_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroidx/exifinterface/media/ExifInterface;)V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Landroidx/camera/core/impl/utils/Exif;->mRemoveTimestamp:Z

    .line 105
    iput-object p1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    return-void
.end method

.method private attachLastModifiedTimestamp()V
    .registers 6

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 324
    invoke-static {v0, v1}, Landroidx/camera/core/impl/utils/Exif;->convertToExifDateTime(J)Ljava/lang/String;

    move-result-object v2

    .line 326
    iget-object v3, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v4, "DateTime"

    invoke-virtual {v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :try_start_f
    invoke-static {v2}, Landroidx/camera/core/impl/utils/Exif;->convertFromExifDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 330
    iget-object v1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v2, "SubSecTime"

    invoke-virtual {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_23} :catch_23

    :catch_23
    return-void
.end method

.method private static convertFromExifDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 164
    sget-object v0, Landroidx/camera/core/impl/utils/Exif;->DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static convertFromExifDateTime(Ljava/lang/String;)Ljava/util/Date;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 160
    sget-object v0, Landroidx/camera/core/impl/utils/Exif;->DATETIME_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static convertFromExifTime(Ljava/lang/String;)Ljava/util/Date;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 168
    sget-object v0, Landroidx/camera/core/impl/utils/Exif;->TIME_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static convertToExifDateTime(J)Ljava/lang/String;
    .registers 4

    .line 156
    sget-object v0, Landroidx/camera/core/impl/utils/Exif;->DATETIME_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createFromFile(Ljava/io/File;)Landroidx/camera/core/impl/utils/Exif;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/Exif;->createFromFileString(Ljava/lang/String;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object p0

    return-object p0
.end method

.method public static createFromFileString(Ljava/lang/String;)Landroidx/camera/core/impl/utils/Exif;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-instance v0, Landroidx/camera/core/impl/utils/Exif;

    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/utils/Exif;-><init>(Landroidx/exifinterface/media/ExifInterface;)V

    return-object v0
.end method

.method public static createFromImageProxy(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/impl/utils/Exif;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 129
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    .line 130
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 131
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 132
    invoke-static {p0}, Landroidx/camera/core/impl/utils/Exif;->createFromInputStream(Ljava/io/InputStream;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object p0

    return-object p0
.end method

.method public static createFromInputStream(Ljava/io/InputStream;)Landroidx/camera/core/impl/utils/Exif;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    new-instance v0, Landroidx/camera/core/impl/utils/Exif;

    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/utils/Exif;-><init>(Landroidx/exifinterface/media/ExifInterface;)V

    return-object v0
.end method

.method public static getAllExifTags()Ljava/util/List;
    .registers 153
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ImageWidth"

    const-string v1, "ImageLength"

    const-string v2, "BitsPerSample"

    const-string v3, "Compression"

    const-string v4, "PhotometricInterpretation"

    const-string v5, "Orientation"

    const-string v6, "SamplesPerPixel"

    const-string v7, "PlanarConfiguration"

    const-string v8, "YCbCrSubSampling"

    const-string v9, "YCbCrPositioning"

    const-string v10, "XResolution"

    const-string v11, "YResolution"

    const-string v12, "ResolutionUnit"

    const-string v13, "StripOffsets"

    const-string v14, "RowsPerStrip"

    const-string v15, "StripByteCounts"

    const-string v16, "JPEGInterchangeFormat"

    const-string v17, "JPEGInterchangeFormatLength"

    const-string v18, "TransferFunction"

    const-string v19, "WhitePoint"

    const-string v20, "PrimaryChromaticities"

    const-string v21, "YCbCrCoefficients"

    const-string v22, "ReferenceBlackWhite"

    const-string v23, "DateTime"

    const-string v24, "ImageDescription"

    const-string v25, "Make"

    const-string v26, "Model"

    const-string v27, "Software"

    const-string v28, "Artist"

    const-string v29, "Copyright"

    const-string v30, "ExifVersion"

    const-string v31, "FlashpixVersion"

    const-string v32, "ColorSpace"

    const-string v33, "Gamma"

    const-string v34, "PixelXDimension"

    const-string v35, "PixelYDimension"

    const-string v36, "ComponentsConfiguration"

    const-string v37, "CompressedBitsPerPixel"

    const-string v38, "MakerNote"

    const-string v39, "UserComment"

    const-string v40, "RelatedSoundFile"

    const-string v41, "DateTimeOriginal"

    const-string v42, "DateTimeDigitized"

    const-string v43, "OffsetTime"

    const-string v44, "OffsetTimeOriginal"

    const-string v45, "OffsetTimeDigitized"

    const-string v46, "SubSecTime"

    const-string v47, "SubSecTimeOriginal"

    const-string v48, "SubSecTimeDigitized"

    const-string v49, "ExposureTime"

    const-string v50, "FNumber"

    const-string v51, "ExposureProgram"

    const-string v52, "SpectralSensitivity"

    const-string v53, "PhotographicSensitivity"

    const-string v54, "OECF"

    const-string v55, "SensitivityType"

    const-string v56, "StandardOutputSensitivity"

    const-string v57, "RecommendedExposureIndex"

    const-string v58, "ISOSpeed"

    const-string v59, "ISOSpeedLatitudeyyy"

    const-string v60, "ISOSpeedLatitudezzz"

    const-string v61, "ShutterSpeedValue"

    const-string v62, "ApertureValue"

    const-string v63, "BrightnessValue"

    const-string v64, "ExposureBiasValue"

    const-string v65, "MaxApertureValue"

    const-string v66, "SubjectDistance"

    const-string v67, "MeteringMode"

    const-string v68, "LightSource"

    const-string v69, "Flash"

    const-string v70, "SubjectArea"

    const-string v71, "FocalLength"

    const-string v72, "FlashEnergy"

    const-string v73, "SpatialFrequencyResponse"

    const-string v74, "FocalPlaneXResolution"

    const-string v75, "FocalPlaneYResolution"

    const-string v76, "FocalPlaneResolutionUnit"

    const-string v77, "SubjectLocation"

    const-string v78, "ExposureIndex"

    const-string v79, "SensingMethod"

    const-string v80, "FileSource"

    const-string v81, "SceneType"

    const-string v82, "CFAPattern"

    const-string v83, "CustomRendered"

    const-string v84, "ExposureMode"

    const-string v85, "WhiteBalance"

    const-string v86, "DigitalZoomRatio"

    const-string v87, "FocalLengthIn35mmFilm"

    const-string v88, "SceneCaptureType"

    const-string v89, "GainControl"

    const-string v90, "Contrast"

    const-string v91, "Saturation"

    const-string v92, "Sharpness"

    const-string v93, "DeviceSettingDescription"

    const-string v94, "SubjectDistanceRange"

    const-string v95, "ImageUniqueID"

    const-string v96, "CameraOwnerName"

    const-string v97, "BodySerialNumber"

    const-string v98, "LensSpecification"

    const-string v99, "LensMake"

    const-string v100, "LensModel"

    const-string v101, "LensSerialNumber"

    const-string v102, "GPSVersionID"

    const-string v103, "GPSLatitudeRef"

    const-string v104, "GPSLatitude"

    const-string v105, "GPSLongitudeRef"

    const-string v106, "GPSLongitude"

    const-string v107, "GPSAltitudeRef"

    const-string v108, "GPSAltitude"

    const-string v109, "GPSTimeStamp"

    const-string v110, "GPSSatellites"

    const-string v111, "GPSStatus"

    const-string v112, "GPSMeasureMode"

    const-string v113, "GPSDOP"

    const-string v114, "GPSSpeedRef"

    const-string v115, "GPSSpeed"

    const-string v116, "GPSTrackRef"

    const-string v117, "GPSTrack"

    const-string v118, "GPSImgDirectionRef"

    const-string v119, "GPSImgDirection"

    const-string v120, "GPSMapDatum"

    const-string v121, "GPSDestLatitudeRef"

    const-string v122, "GPSDestLatitude"

    const-string v123, "GPSDestLongitudeRef"

    const-string v124, "GPSDestLongitude"

    const-string v125, "GPSDestBearingRef"

    const-string v126, "GPSDestBearing"

    const-string v127, "GPSDestDistanceRef"

    const-string v128, "GPSDestDistance"

    const-string v129, "GPSProcessingMethod"

    const-string v130, "GPSAreaInformation"

    const-string v131, "GPSDateStamp"

    const-string v132, "GPSDifferential"

    const-string v133, "GPSHPositioningError"

    const-string v134, "InteroperabilityIndex"

    const-string v135, "ThumbnailImageLength"

    const-string v136, "ThumbnailImageWidth"

    const-string v137, "ThumbnailOrientation"

    const-string v138, "DNGVersion"

    const-string v139, "DefaultCropSize"

    const-string v140, "ThumbnailImage"

    const-string v141, "PreviewImageStart"

    const-string v142, "PreviewImageLength"

    const-string v143, "AspectFrame"

    const-string v144, "SensorBottomBorder"

    const-string v145, "SensorLeftBorder"

    const-string v146, "SensorRightBorder"

    const-string v147, "SensorTopBorder"

    const-string v148, "ISO"

    const-string v149, "JpgFromRaw"

    const-string v150, "Xmp"

    const-string v151, "NewSubfileType"

    const-string v152, "SubfileType"

    .line 728
    filled-new-array/range {v0 .. v152}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private parseTimestamp(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    return-wide v0

    .line 690
    :cond_5
    :try_start_5
    invoke-static {p1}, Landroidx/camera/core/impl/utils/Exif;->convertFromExifDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_d
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_d} :catch_d

    :catch_d
    return-wide v0
.end method

.method private parseTimestamp(Ljava/lang/String;Ljava/lang/String;)J
    .registers 5

    const-wide/16 v0, -0x1

    if-nez p1, :cond_7

    if-nez p2, :cond_7

    return-wide v0

    :cond_7
    if-nez p2, :cond_13

    .line 669
    :try_start_9
    invoke-static {p1}, Landroidx/camera/core/impl/utils/Exif;->convertFromExifDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_11} :catch_12

    return-wide p1

    :catch_12
    return-wide v0

    :cond_13
    if-nez p1, :cond_1f

    .line 676
    :try_start_15
    invoke-static {p2}, Landroidx/camera/core/impl/utils/Exif;->convertFromExifTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1
    :try_end_1d
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_1d} :catch_1e

    return-wide p1

    :catch_1e
    return-wide v0

    .line 681
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/camera/core/impl/utils/Exif;->parseTimestamp(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public attachLocation(Landroid/location/Location;)V
    .registers 3

    .line 644
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface;->setGpsInfo(Landroid/location/Location;)V

    return-void
.end method

.method public attachTimestamp()V
    .registers 6

    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 616
    invoke-static {v0, v1}, Landroidx/camera/core/impl/utils/Exif;->convertToExifDateTime(J)Ljava/lang/String;

    move-result-object v2

    .line 618
    iget-object v3, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v4, "DateTimeOriginal"

    invoke-virtual {v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v3, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v4, "DateTimeDigitized"

    invoke-virtual {v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :try_start_16
    invoke-static {v2}, Landroidx/camera/core/impl/utils/Exif;->convertFromExifDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 623
    iget-object v1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v2, "SubSecTimeOriginal"

    invoke-virtual {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v2, "SubSecTimeDigitized"

    invoke-virtual {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/text/ParseException; {:try_start_16 .. :try_end_31} :catch_31

    :catch_31
    const/4 v0, 0x0

    .line 628
    iput-boolean v0, p0, Landroidx/camera/core/impl/utils/Exif;->mRemoveTimestamp:Z

    return-void
.end method

.method public copyToCroppedImage(Landroidx/camera/core/impl/utils/Exif;)V
    .registers 6

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroidx/camera/core/impl/utils/Exif;->ALL_EXIF_TAGS:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    sget-object v1, Landroidx/camera/core/impl/utils/Exif;->DO_NOT_COPY_EXIF_TAGS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 188
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    iget-object v2, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {v2, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    iget-object v3, p1, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {v3, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_10

    .line 191
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 192
    iget-object v3, p1, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {v3, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_36
    return-void
.end method

.method public flipHorizontally()V
    .registers 4

    .line 574
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    const/4 v0, 0x2

    goto :goto_17

    :pswitch_9
    const/4 v0, 0x7

    goto :goto_17

    :pswitch_b
    const/16 v0, 0x8

    goto :goto_17

    :pswitch_e
    const/4 v0, 0x5

    goto :goto_17

    :pswitch_10
    const/4 v0, 0x6

    goto :goto_17

    :pswitch_12
    const/4 v0, 0x3

    goto :goto_17

    :pswitch_14
    const/4 v0, 0x4

    goto :goto_17

    :pswitch_16
    const/4 v0, 0x1

    .line 604
    :goto_17
    iget-object v1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v2, "Orientation"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method public flipVertically()V
    .registers 4

    .line 535
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    const/4 v0, 0x4

    goto :goto_17

    :pswitch_9
    const/4 v0, 0x5

    goto :goto_17

    :pswitch_b
    const/4 v0, 0x6

    goto :goto_17

    :pswitch_d
    const/4 v0, 0x7

    goto :goto_17

    :pswitch_f
    const/16 v0, 0x8

    goto :goto_17

    :pswitch_12
    const/4 v0, 0x1

    goto :goto_17

    :pswitch_14
    const/4 v0, 0x2

    goto :goto_17

    :pswitch_16
    const/4 v0, 0x3

    .line 565
    :goto_17
    iget-object v1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v2, "Orientation"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3

    .line 236
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "ImageDescription"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExifInterface()Landroidx/exifinterface/media/ExifInterface;
    .registers 2

    .line 610
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    return-object v0
.end method

.method public getHeight()I
    .registers 4

    .line 231
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "ImageLength"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastModifiedTimestamp()J
    .registers 7

    .line 340
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "DateTime"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/impl/utils/Exif;->parseTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    return-wide v2

    .line 345
    :cond_13
    iget-object v2, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v3, "SubSecTime"

    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 348
    :try_start_1d
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_21
    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-lez v4, :cond_2b

    const-wide/16 v4, 0xa

    .line 350
    div-long/2addr v2, v4
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_2a} :catch_2c

    goto :goto_21

    :cond_2b
    add-long/2addr v0, v2

    :catch_2c
    :cond_2c
    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 17

    move-object/from16 v0, p0

    .line 391
    iget-object v1, v0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v2, "GPSProcessingMethod"

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    iget-object v2, v0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface;->getLatLong()[D

    move-result-object v2

    .line 393
    iget-object v3, v0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface;->getAltitude(D)D

    move-result-wide v6

    .line 394
    iget-object v3, v0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v8, "GPSSpeed"

    invoke-virtual {v3, v8, v4, v5}, Landroidx/exifinterface/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 395
    iget-object v3, v0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v10, "GPSSpeedRef"

    invoke-virtual {v3, v10}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "K"

    if-nez v3, :cond_2d

    move-object v3, v10

    .line 397
    :cond_2d
    iget-object v11, v0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v12, "GPSDateStamp"

    .line 399
    invoke-virtual {v11, v12}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v13, "GPSTimeStamp"

    .line 400
    invoke-virtual {v12, v13}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 398
    invoke-direct {v0, v11, v12}, Landroidx/camera/core/impl/utils/Exif;->parseTimestamp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    if-nez v2, :cond_45

    const/4 v1, 0x0

    return-object v1

    :cond_45
    if-nez v1, :cond_49

    .line 405
    sget-object v1, Landroidx/camera/core/impl/utils/Exif;->TAG:Ljava/lang/String;

    .line 408
    :cond_49
    new-instance v13, Landroid/location/Location;

    invoke-direct {v13, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 409
    aget-wide v14, v2, v1

    invoke-virtual {v13, v14, v15}, Landroid/location/Location;->setLatitude(D)V

    const/4 v14, 0x1

    .line 410
    aget-wide v1, v2, v14

    invoke-virtual {v13, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    cmpl-double v1, v6, v4

    if-eqz v1, :cond_61

    .line 412
    invoke-virtual {v13, v6, v7}, Landroid/location/Location;->setAltitude(D)V

    :cond_61
    cmpl-double v1, v8, v4

    if-eqz v1, :cond_b5

    .line 415
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x4b

    if-eq v1, v2, :cond_8a

    const/16 v2, 0x4d

    if-eq v1, v2, :cond_80

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_76

    goto :goto_92

    :cond_76
    const-string v1, "N"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    move v1, v14

    goto :goto_93

    :cond_80
    const-string v1, "M"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    const/4 v1, 0x0

    goto :goto_93

    :cond_8a
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    const/4 v1, 0x2

    goto :goto_93

    :cond_92
    :goto_92
    const/4 v1, -0x1

    :goto_93
    if-eqz v1, :cond_a9

    if-eq v1, v14, :cond_a0

    .line 425
    invoke-static {v8, v9}, Landroidx/camera/core/impl/utils/Exif$Speed;->fromKilometersPerHour(D)Landroidx/camera/core/impl/utils/Exif$Speed$Converter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;->toMetersPerSecond()D

    move-result-wide v1

    goto :goto_b1

    .line 420
    :cond_a0
    invoke-static {v8, v9}, Landroidx/camera/core/impl/utils/Exif$Speed;->fromKnots(D)Landroidx/camera/core/impl/utils/Exif$Speed$Converter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;->toMetersPerSecond()D

    move-result-wide v1

    goto :goto_b1

    .line 417
    :cond_a9
    invoke-static {v8, v9}, Landroidx/camera/core/impl/utils/Exif$Speed;->fromMilesPerHour(D)Landroidx/camera/core/impl/utils/Exif$Speed$Converter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;->toMetersPerSecond()D

    move-result-wide v1

    :goto_b1
    double-to-float v1, v1

    .line 429
    invoke-virtual {v13, v1}, Landroid/location/Location;->setSpeed(F)V

    :cond_b5
    const-wide/16 v1, -0x1

    cmp-long v1, v11, v1

    if-eqz v1, :cond_be

    .line 432
    invoke-virtual {v13, v11, v12}, Landroid/location/Location;->setTime(J)V

    :cond_be
    return-object v13
.end method

.method public getOrientation()I
    .registers 4

    .line 215
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "Orientation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRotation()I
    .registers 5

    .line 246
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    move-result v0

    const/16 v1, 0x5a

    const/16 v2, 0x10e

    const/16 v3, 0xb4

    packed-switch v0, :pswitch_data_14

    const/4 v0, 0x0

    return v0

    :pswitch_f
    return v2

    :pswitch_10
    return v1

    :pswitch_11
    return v2

    :pswitch_12
    return v3

    nop

    :pswitch_data_14
    .packed-switch 0x3
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public getTimestamp()J
    .registers 7

    .line 366
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "DateTimeOriginal"

    .line 367
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/impl/utils/Exif;->parseTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    return-wide v2

    .line 372
    :cond_13
    iget-object v2, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v3, "SubSecTimeOriginal"

    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 375
    :try_start_1d
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_21
    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-lez v4, :cond_2b

    const-wide/16 v4, 0xa

    .line 377
    div-long/2addr v2, v4
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_2a} :catch_2c

    goto :goto_21

    :cond_2b
    add-long/2addr v0, v2

    :catch_2c
    :cond_2c
    return-wide v0
.end method

.method public getWidth()I
    .registers 4

    .line 226
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "ImageWidth"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isFlippedHorizontally()Z
    .registers 3

    .line 298
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public isFlippedVertically()Z
    .registers 4

    .line 272
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x5

    if-eq v0, v1, :cond_10

    const/4 v1, 0x7

    if-eq v0, v1, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    return v2
.end method

.method public removeLocation()V
    .registers 4

    .line 649
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSProcessingMethod"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSLatitude"

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSLatitudeRef"

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSLongitude"

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSLongitudeRef"

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSAltitude"

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSAltitudeRef"

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSSpeed"

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSSpeedRef"

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSDateStamp"

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSTimeStamp"

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeTimestamp()V
    .registers 4

    .line 633
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "DateTime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "DateTimeOriginal"

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "DateTimeDigitized"

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "SubSecTime"

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "SubSecTimeOriginal"

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "SubSecTimeDigitized"

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 639
    iput-boolean v0, p0, Landroidx/camera/core/impl/utils/Exif;->mRemoveTimestamp:Z

    return-void
.end method

.method public rotate(I)V
    .registers 11

    .line 442
    rem-int/lit8 v0, p1, 0x5a

    const-string v1, "Orientation"

    const/4 v2, 0x1

    if-eqz v0, :cond_27

    .line 443
    sget-object v0, Landroidx/camera/core/impl/utils/Exif;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 448
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const-string p1, "Can only rotate in right angles (eg. 0, 90, 180, 270). %d is unsupported."

    .line 445
    invoke-static {v3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 443
    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 451
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-virtual {p1, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 455
    :cond_27
    rem-int/lit16 p1, p1, 0x168

    .line 457
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    move-result v0

    :goto_2d
    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x7

    const/4 v6, 0x5

    const/16 v7, 0x8

    const/4 v8, 0x6

    if-gez p1, :cond_49

    add-int/lit8 p1, p1, 0x5a

    packed-switch v0, :pswitch_data_6a

    move v0, v7

    goto :goto_2d

    :pswitch_3d
    move v0, v3

    goto :goto_2d

    :pswitch_3f
    move v0, v2

    goto :goto_2d

    :pswitch_41
    move v0, v4

    goto :goto_2d

    :pswitch_43
    move v0, v5

    goto :goto_2d

    :pswitch_45
    move v0, v8

    goto :goto_2d

    :pswitch_47
    move v0, v6

    goto :goto_2d

    :cond_49
    :goto_49
    if-lez p1, :cond_60

    add-int/lit8 p1, p1, -0x5a

    packed-switch v0, :pswitch_data_7c

    move v0, v8

    goto :goto_49

    :pswitch_52
    move v0, v2

    goto :goto_49

    :pswitch_54
    move v0, v4

    goto :goto_49

    :pswitch_56
    const/4 v0, 0x3

    goto :goto_49

    :pswitch_58
    move v0, v3

    goto :goto_49

    :pswitch_5a
    move v0, v6

    goto :goto_49

    :pswitch_5c
    move v0, v7

    goto :goto_49

    :pswitch_5e
    move v0, v5

    goto :goto_49

    .line 526
    :cond_60
    iget-object p1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_6a
    .packed-switch 0x2
        :pswitch_47
        :pswitch_45
        :pswitch_43
        :pswitch_41
        :pswitch_3f
        :pswitch_3d
        :pswitch_45
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0x2
        :pswitch_5e
        :pswitch_5c
        :pswitch_5a
        :pswitch_58
        :pswitch_56
        :pswitch_54
        :pswitch_52
    .end packed-switch
.end method

.method public save()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-boolean v0, p0, Landroidx/camera/core/impl/utils/Exif;->mRemoveTimestamp:Z

    if-nez v0, :cond_7

    .line 174
    invoke-direct {p0}, Landroidx/camera/core/impl/utils/Exif;->attachLastModifiedTimestamp()V

    .line 176
    :cond_7
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 4

    .line 241
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "ImageDescription"

    invoke-virtual {v0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 4

    .line 221
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "Orientation"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 199
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    .line 204
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 205
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 206
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getRotation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 207
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->isFlippedVertically()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 208
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->isFlippedHorizontally()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    .line 209
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getLocation()Landroid/location/Location;

    move-result-object v3

    aput-object v3, v1, v2

    .line 210
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x7

    .line 211
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Exif{width=%s, height=%s, rotation=%d, isFlippedVertically=%s, isFlippedHorizontally=%s, location=%s, timestamp=%s, description=%s}"

    .line 199
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
