.class public final Lcom/fluttercandies/photo_manager/core/utils/CommonExtKt;
.super Ljava/lang/Object;
.source "CommonExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "checkDirs",
        "",
        "",
        "getOrientationDegrees",
        "",
        "Ljava/io/InputStream;",
        "photo_manager_release"
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
.method public static final checkDirs(Ljava/lang/String;)V
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_21

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_21
    return-void
.end method

.method public static final getOrientationDegrees(Ljava/io/InputStream;)I
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    :try_start_5
    check-cast p0, Ljava/io/Closeable;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1f

    :try_start_7
    move-object v0, p0

    check-cast v0, Ljava/io/InputStream;

    .line 20
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface;->getRotationDegrees()I

    move-result v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_18

    const/4 v1, 0x0

    .line 19
    :try_start_14
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1f

    goto :goto_20

    :catchall_18
    move-exception v0

    :try_start_19
    throw v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v1

    :try_start_1b
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1f

    :catchall_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method
