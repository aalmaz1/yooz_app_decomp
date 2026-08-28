.class public final Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;
.super Ljava/lang/Object;
.source "PhotoManagerPlugin.kt"

# interfaces
.implements Lcom/fluttercandies/photo_manager/permission/PermissionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->handlePermissionMethod(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J2\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\u0016\u0010\t\u001a\u00020\u00032\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1",
        "Lcom/fluttercandies/photo_manager/permission/PermissionsListener;",
        "onDenied",
        "",
        "deniedPermissions",
        "",
        "",
        "grantedPermissions",
        "needPermissions",
        "onGranted",
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


# instance fields
.field final synthetic $mediaLocation:Z

.field final synthetic $requestType:I

.field final synthetic $resultHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

.field final synthetic this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;


# direct methods
.method constructor <init>(Lcom/fluttercandies/photo_manager/util/ResultHandler;Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;IZ)V
    .registers 5

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->$resultHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    iput p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->$requestType:I

    iput-boolean p4, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->$mediaLocation:Z

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deniedPermissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "grantedPermissions"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "needPermissions"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    invoke-static {p1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->access$getPermissionsUtils$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    move-result-object p1

    iget p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->$requestType:I

    iget-boolean p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->$mediaLocation:Z

    invoke-virtual {p1, p2, p3}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->getAuthValue(IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    move-result-object p1

    .line 240
    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->$resultHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "needPermissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->$resultHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    invoke-static {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->access$getPermissionsUtils$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    move-result-object v0

    iget v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->$requestType:I

    iget-boolean v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;->$mediaLocation:Z

    invoke-virtual {v0, v1, v2}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->getAuthValue(IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void
.end method
