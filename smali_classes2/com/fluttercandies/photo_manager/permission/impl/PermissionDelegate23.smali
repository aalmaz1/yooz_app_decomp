.class public Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;
.super Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;
.source "PermissionDelegate23.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J(\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;",
        "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;",
        "()V",
        "getAuthValue",
        "Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;",
        "context",
        "Landroid/app/Application;",
        "requestType",
        "",
        "mediaLocation",
        "",
        "haveMediaLocation",
        "Landroid/content/Context;",
        "havePermissions",
        "requestPermission",
        "",
        "permissionsUtils",
        "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
        "Companion",
        "photo_manager_release"
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
.field public static final Companion:Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23$Companion;

.field private static final readPermission:Ljava/lang/String; = "android.permission.READ_EXTERNAL_STORAGE"

.field private static final writePermission:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;->Companion:Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthValue(Landroid/app/Application;IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    check-cast p1, Landroid/content/Context;

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string p3, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;->havePermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    sget-object p1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Authorized:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    return-object p1

    .line 49
    :cond_0
    sget-object p1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Denied:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    return-object p1
.end method

.method public haveMediaLocation(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public havePermissions(Landroid/content/Context;I)Z
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;->havePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, p1, p2}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;->havePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestPermission(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;IZ)V
    .locals 7

    const-string p3, "permissionsUtils"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "android.permission.READ_EXTERNAL_STORAGE"

    const-string p4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 24
    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 26
    invoke-virtual {p0, p2, p3}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;->havePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p4}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;->havePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->getPermissionsListener()Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, v3}, Lcom/fluttercandies/photo_manager/permission/PermissionsListener;->onGranted(Ljava/util/List;)V

    goto :goto_0

    .line 29
    :cond_0
    move-object v1, p0

    check-cast v1, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->requestPermission$default(Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Ljava/util/List;IILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
