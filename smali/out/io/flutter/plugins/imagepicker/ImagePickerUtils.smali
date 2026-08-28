.class final Lio/flutter/plugins/imagepicker/ImagePickerUtils;
.super Ljava/lang/Object;
.source "ImagePickerUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLimitFromOption(Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;)I
    .registers 6

    .line 79
    invoke-virtual {p0}, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;->getLimit()Ljava/lang/Long;

    move-result-object p0

    .line 80
    invoke-static {}, Lio/flutter/plugins/imagepicker/ImagePickerUtils;->getMaxItems()I

    move-result v0

    if-eqz p0, :cond_1b

    .line 82
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1b

    .line 83
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    :cond_1b
    return v0
.end method

.method static getMaxItems()I
    .registers 1

    .line 71
    invoke-static {}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;->isSystemPickerAvailable$activity_release()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 72
    invoke-static {}, Landroid/provider/MediaStore;->getPickImagesMaxLimit()I

    move-result v0

    return v0

    :cond_b
    const v0, 0x7fffffff

    return v0
.end method

.method private static getPermissionsPackageInfoPreApi33(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 44
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static isPermissionPresentInManifest(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 21
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_19

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x1000

    .line 27
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    .line 25
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    goto :goto_21

    .line 29
    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/flutter/plugins/imagepicker/ImagePickerUtils;->getPermissionsPackageInfoPreApi33(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 32
    :goto_21
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 33
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_2b} :catch_2c

    return p0

    :catch_2c
    move-exception p0

    .line 35
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method static needRequestCameraPermission(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "android.permission.CAMERA"

    .line 58
    invoke-static {p0, v0}, Lio/flutter/plugins/imagepicker/ImagePickerUtils;->isPermissionPresentInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
