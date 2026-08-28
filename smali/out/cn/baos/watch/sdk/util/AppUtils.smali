.class public final Lcn/baos/watch/sdk/util/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/baos/watch/sdk/util/AppUtils;",
        "",
        "()V",
        "checkPermissions",
        "",
        "mContext",
        "Landroid/content/Context;",
        "permission",
        "",
        "isKeepLive",
        "local",
        "registerKeepLive",
        "",
        "update",
        "unregister",
        "lib_watch_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_26

    .line 112
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {p1, p2, v0, v1, v3}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_26

    return v2

    .line 119
    :cond_26
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    return v2
.end method

.method public final isKeepLive(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 27
    invoke-virtual {p0, p1, v0}, Lcn/baos/watch/sdk/util/AppUtils;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 30
    invoke-virtual {p0, p1, v1}, Lcn/baos/watch/sdk/util/AppUtils;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method public final local(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    .line 125
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_39

    return-object p1

    :catch_39
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public final registerKeepLive(ZLandroid/content/Context;)V
    .registers 3

    const-string p1, "mContext"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final unregister(Landroid/content/Context;)V
    .registers 3

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
