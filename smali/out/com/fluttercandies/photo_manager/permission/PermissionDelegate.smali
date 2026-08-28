.class public abstract Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;
.super Ljava/lang/Object;
.source "PermissionDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionDelegate.kt\ncom/fluttercandies/photo_manager/permission/PermissionDelegate\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,180:1\n37#2,2:181\n12271#3,2:183\n12474#3,2:185\n12271#3,2:187\n*S KotlinDebug\n*F\n+ 1 PermissionDelegate.kt\ncom/fluttercandies/photo_manager/permission/PermissionDelegate\n*L\n36#1:181,2\n71#1:183,2\n75#1:185,2\n92#1:187,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0013\u0008&\u0018\u0000 12\u00020\u0001:\u00011B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H&Je\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\n0\u001f2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001f2\u0006\u0010\"\u001a\u00020\u0012H\u0016\u00a2\u0006\u0002\u0010#J)\u0010$\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u00192\u0012\u0010\u001a\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\u001b\"\u00020\nH\u0004\u00a2\u0006\u0002\u0010%J\u0010\u0010&\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u0019H&J\u0016\u0010\'\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u00192\u0006\u0010(\u001a\u00020\nJ\u0018\u0010)\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u00192\u0006\u0010(\u001a\u00020\nH\u0004J\u0018\u0010*\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u00192\u0006\u0010(\u001a\u00020\nH\u0002J\'\u0010+\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u00192\u0012\u0010(\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\u001b\"\u00020\n\u00a2\u0006\u0002\u0010%J\u0018\u0010+\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u0012H&J)\u0010,\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u00192\u0012\u0010\u001a\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\u001b\"\u00020\nH\u0004\u00a2\u0006\u0002\u0010%J\u0008\u0010-\u001a\u00020\u0014H\u0016J(\u0010.\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010/\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J(\u00100\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H&J(\u00100\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001f2\u0008\u0008\u0002\u0010\"\u001a\u00020\u0012H\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u00062"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;",
        "",
        "()V",
        "resultHandler",
        "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
        "getResultHandler",
        "()Lcom/fluttercandies/photo_manager/util/ResultHandler;",
        "setResultHandler",
        "(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V",
        "tag",
        "",
        "getTag",
        "()Ljava/lang/String;",
        "getAuthValue",
        "Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;",
        "context",
        "Landroid/app/Application;",
        "requestType",
        "",
        "mediaLocation",
        "",
        "handlePermissionResult",
        "",
        "permissionsUtils",
        "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
        "Landroid/content/Context;",
        "permissions",
        "",
        "grantResults",
        "",
        "needToRequestPermissionsList",
        "",
        "deniedPermissionsList",
        "grantedPermissionsList",
        "requestCode",
        "(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;[Ljava/lang/String;[ILjava/util/List;Ljava/util/List;Ljava/util/List;I)V",
        "haveAnyPermissionForUser",
        "(Landroid/content/Context;[Ljava/lang/String;)Z",
        "haveMediaLocation",
        "havePermission",
        "permission",
        "havePermissionForUser",
        "havePermissionInManifest",
        "havePermissions",
        "havePermissionsForUser",
        "isHandlePermissionResult",
        "presentLimited",
        "type",
        "requestPermission",
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
.field public static final Companion:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;

.field public static final limitedRequestCode:I = 0xbba

.field public static final requestCode:I = 0xbb9


# instance fields
.field private resultHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Companion:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getTag()Ljava/lang/String;
    .registers 3

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final havePermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1b

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 48
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide/16 v1, 0x1000

    .line 49
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    goto :goto_27

    .line 52
    :cond_1b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 53
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x1000

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 57
    :goto_27
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v0, "requestedPermissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static synthetic requestPermission$default(Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Ljava/util/List;IILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_c

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_8

    const/16 p3, 0xbb9

    .line 27
    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->requestPermission(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Ljava/util/List;I)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: requestPermission"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getAuthValue(Landroid/app/Application;IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;
.end method

.method protected final getResultHandler()Lcom/fluttercandies/photo_manager/util/ResultHandler;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->resultHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    return-object v0
.end method

.method public handlePermissionResult(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;[Ljava/lang/String;[ILjava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string p8, "permissionsUtils"

    invoke-static {p1, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "permissions"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "grantResults"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "needToRequestPermissionsList"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deniedPermissionsList"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "grantedPermissionsList"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "handlePermissionResult is not implemented, please implement it in your delegate."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final varargs haveAnyPermissionForUser(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1c

    aget-object v3, p2, v2

    .line 75
    invoke-virtual {p0, p1, v3}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->havePermissionForUser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v1, 0x1

    goto :goto_1c

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1c
    :goto_1c
    return v1
.end method

.method public abstract haveMediaLocation(Landroid/content/Context;)Z
.end method

.method public final havePermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->havePermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1, p2}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->havePermissionForUser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method protected final havePermissionForUser(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {p1, p2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public abstract havePermissions(Landroid/content/Context;I)Z
.end method

.method public final varargs havePermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1b

    aget-object v3, p2, v2

    .line 92
    invoke-virtual {p0, p1, v3}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->havePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_1c

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    const/4 v1, 0x1

    .line 93
    :goto_1c
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] havePermissions: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fluttercandies/photo_manager/util/LogUtils;->debug(Ljava/lang/Object;)V

    return v1
.end method

.method protected final varargs havePermissionsForUser(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1b

    aget-object v3, p2, v2

    .line 71
    invoke-virtual {p0, p1, v3}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->havePermissionForUser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_1c

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    const/4 v1, 0x1

    :goto_1c
    return v1
.end method

.method public isHandlePermissionResult()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public presentLimited(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/app/Application;ILcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .registers 5

    const-string p3, "permissionsUtils"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resultHandler"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] presentLimited is not implemented"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fluttercandies/photo_manager/util/LogUtils;->debug(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 171
    invoke-virtual {p4, p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract requestPermission(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;IZ)V
.end method

.method protected final requestPermission(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "permissionsUtils"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 35
    invoke-virtual {p1, p2}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->setNeedToRequestPermissionsList(Ljava/util/List;)V

    .line 36
    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 182
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 36
    invoke-static {v0, p1, p3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "requestPermission: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " for code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fluttercandies/photo_manager/util/LogUtils;->debug(Ljava/lang/Object;)V

    return-void

    .line 33
    :cond_3f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Activity for the permission request is not exist."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final setResultHandler(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->resultHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    return-void
.end method
