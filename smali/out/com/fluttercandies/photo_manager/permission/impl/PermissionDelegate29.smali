.class public final Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;
.super Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;
.source "PermissionDelegate29.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionDelegate29.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionDelegate29.kt\ncom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,53:1\n37#2,2:54\n*S KotlinDebug\n*F\n+ 1 PermissionDelegate29.kt\ncom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29\n*L\n31#1:54,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000cH\u0016J(\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;",
        "Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;",
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
.field public static final Companion:Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29$Companion;

.field private static final mediaLocationPermission:Ljava/lang/String; = "android.permission.ACCESS_MEDIA_LOCATION"

.field private static final readPermission:Ljava/lang/String; = "android.permission.READ_EXTERNAL_STORAGE"

.field private static final writePermission:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;->Companion:Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthValue(Landroid/app/Application;IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;
    .registers 4

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    check-cast p1, Landroid/content/Context;

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string p3, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;->havePermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 48
    sget-object p1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Authorized:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    goto :goto_1a

    .line 50
    :cond_18
    sget-object p1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Denied:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    :goto_1a
    return-object p1
.end method

.method public haveMediaLocation(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;->havePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestPermission(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;IZ)V
    .registers 11

    const-string p3, "permissionsUtils"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 25
    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz p4, :cond_1d

    const-string p3, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 28
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_1d
    move-object p3, v2

    check-cast p3, Ljava/util/Collection;

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/String;

    .line 55
    invoke-interface {p3, p4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 31
    check-cast p3, [Ljava/lang/String;

    array-length p4, p3

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;->havePermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 32
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->getPermissionsListener()Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    move-result-object p1

    if-eqz p1, :cond_4a

    invoke-interface {p1, v2}, Lcom/fluttercandies/photo_manager/permission/PermissionsListener;->onGranted(Ljava/util/List;)V

    goto :goto_4a

    .line 34
    :cond_40
    move-object v0, p0

    check-cast v0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->requestPermission$default(Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Ljava/util/List;IILjava/lang/Object;)V

    :cond_4a
    :goto_4a
    return-void
.end method
