.class public Lcom/king/camera/scan/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 48
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 59
    invoke-static {p0, v0, p2}, Lcom/king/camera/scan/util/PermissionUtils;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public static requestPermission(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 70
    invoke-static {p0, v0, p2}, Lcom/king/camera/scan/util/PermissionUtils;->requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 5

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestPermissions: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/camera/scan/util/LogUtils;->d(Ljava/lang/String;)V

    .line 82
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public static requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .registers 5

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestPermissions: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/camera/scan/util/LogUtils;->d(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static requestPermissionsResult(Ljava/lang/String;[Ljava/lang/String;[I)Z
    .registers 7

    .line 106
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_16

    .line 108
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 109
    aget v3, p2, v2

    if-nez v3, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_16
    return v1
.end method

.method public static requestPermissionsResult([Ljava/lang/String;[Ljava/lang/String;[I)Z
    .registers 9

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_1e

    move v3, v1

    .line 128
    :goto_6
    array-length v4, p0

    if-ge v3, v4, :cond_1b

    .line 129
    aget-object v4, p0, v3

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 130
    aget v4, p2, v2

    if-eqz v4, :cond_18

    return v1

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method
