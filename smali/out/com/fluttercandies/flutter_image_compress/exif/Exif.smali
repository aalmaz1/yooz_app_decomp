.class public final Lcom/fluttercandies/flutter_image_compress/exif/Exif;
.super Ljava/lang/Object;
.source "Exif.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/fluttercandies/flutter_image_compress/exif/Exif;",
        "",
        "()V",
        "getFromExifInterface",
        "",
        "byteArray",
        "",
        "getRotationDegrees",
        "file",
        "Ljava/io/File;",
        "_bytes",
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


# static fields
.field public static final INSTANCE:Lcom/fluttercandies/flutter_image_compress/exif/Exif;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fluttercandies/flutter_image_compress/exif/Exif;

    invoke-direct {v0}, Lcom/fluttercandies/flutter_image_compress/exif/Exif;-><init>()V

    sput-object v0, Lcom/fluttercandies/flutter_image_compress/exif/Exif;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/exif/Exif;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getFromExifInterface([B)I
    .registers 4

    .line 17
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v0, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 18
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface;->getRotationDegrees()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final getRotationDegrees(Ljava/io/File;)I
    .registers 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    :try_start_5
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface;->getRotationDegrees()I

    move-result p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public final getRotationDegrees([B)I
    .registers 3

    const-string v0, "_bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :try_start_5
    invoke-direct {p0, p1}, Lcom/fluttercandies/flutter_image_compress/exif/Exif;->getFromExifInterface([B)I

    move-result p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
