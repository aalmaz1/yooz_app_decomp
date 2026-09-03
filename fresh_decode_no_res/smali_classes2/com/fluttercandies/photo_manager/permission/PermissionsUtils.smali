.class public final Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;
.super Ljava/lang/Object;
.source "PermissionsUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\tJ)\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001e2\u0006\u0010\u001f\u001a\u00020 \u00a2\u0006\u0002\u0010!J\u0008\u0010\"\u001a\u0004\u0018\u00010\u0010J\u0010\u0010#\u001a\u00020$2\u0008\u0010\u0003\u001a\u0004\u0018\u00010%J\u0016\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020\u000cJ\u000e\u0010*\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020%J\u0016\u0010,\u001a\u00020$2\u0006\u0010-\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020/J\u001e\u00100\u001a\u00020\u00002\u0006\u0010+\u001a\u00020%2\u0006\u0010(\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020\u000cJ\u0008\u00101\u001a\u00020$H\u0002J\u0010\u00102\u001a\u00020\u00002\u0008\u00103\u001a\u0004\u0018\u00010\u0013J\u0014\u00104\u001a\u00020$2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008J\u0010\u00105\u001a\u00020\u00002\u0008\u00106\u001a\u0004\u0018\u00010\u0010R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u00067"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
        "",
        "()V",
        "context",
        "Landroid/app/Application;",
        "delegate",
        "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;",
        "deniedPermissionsList",
        "",
        "",
        "grantedPermissionsList",
        "<set-?>",
        "",
        "isRequesting",
        "()Z",
        "mActivity",
        "Landroid/app/Activity;",
        "needToRequestPermissionsList",
        "permissionsListener",
        "Lcom/fluttercandies/photo_manager/permission/PermissionsListener;",
        "getPermissionsListener",
        "()Lcom/fluttercandies/photo_manager/permission/PermissionsListener;",
        "setPermissionsListener",
        "(Lcom/fluttercandies/photo_manager/permission/PermissionsListener;)V",
        "checkCallingOrSelfPermission",
        "permission",
        "dealResult",
        "requestCode",
        "",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
        "getActivity",
        "getAppDetailSettingIntent",
        "",
        "Landroid/content/Context;",
        "getAuthValue",
        "Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;",
        "requestType",
        "mediaLocation",
        "haveLocationPermission",
        "applicationContext",
        "presentLimited",
        "type",
        "resultHandler",
        "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
        "requestPermission",
        "resetStatus",
        "setListener",
        "listener",
        "setNeedToRequestPermissionsList",
        "withActivity",
        "activity",
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
.field private context:Landroid/app/Application;

.field private final delegate:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

.field private final deniedPermissionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final grantedPermissionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRequesting:Z

.field private mActivity:Landroid/app/Activity;

.field private final needToRequestPermissionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permissionsListener:Lcom/fluttercandies/photo_manager/permission/PermissionsListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Companion:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;

    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;->create()Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->delegate:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->needToRequestPermissionsList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->deniedPermissionsList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->grantedPermissionsList:Ljava/util/List;

    return-void
.end method

.method private final resetStatus()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->deniedPermissionsList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->deniedPermissionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->needToRequestPermissionsList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->needToRequestPermissionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final checkCallingOrSelfPermission(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->context:Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 100
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/content/Context;

    .line 99
    invoke-static {v0, p1}, Landroidx/core/content/PermissionChecker;->checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context for the permission request is not exist."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final dealResult(I[Ljava/lang/String;[I)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;
    .locals 11

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xbb9

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbba

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 120
    :cond_0
    array-length v0, p2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 121
    aget-object v3, p2, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Returned permissions: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fluttercandies/photo_manager/util/LogUtils;->info(Ljava/lang/Object;)V

    .line 122
    aget v3, p3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 123
    iget-object v3, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->deniedPermissionsList:Ljava/util/List;

    aget-object v4, p2, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->grantedPermissionsList:Ljava/util/List;

    aget-object v4, p2, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "dealResult: "

    .line 129
    invoke-static {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->debug(Ljava/lang/Object;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  permissions: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->debug(Ljava/lang/Object;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  grantResults: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->debug(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->deniedPermissionsList:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  deniedPermissionsList: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->debug(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->grantedPermissionsList:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  grantedPermissionsList: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->debug(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->delegate:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->isHandlePermissionResult()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    iget-object v2, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->delegate:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    .line 138
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->context:Landroid/app/Application;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    .line 141
    iget-object v7, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->needToRequestPermissionsList:Ljava/util/List;

    .line 142
    iget-object v8, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->deniedPermissionsList:Ljava/util/List;

    .line 143
    iget-object v9, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->grantedPermissionsList:Ljava/util/List;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move v10, p1

    .line 136
    invoke-virtual/range {v2 .. v10}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->handlePermissionResult(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;[Ljava/lang/String;[ILjava/util/List;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_2

    .line 147
    :cond_4
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->deniedPermissionsList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    .line 149
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->permissionsListener:Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 150
    iget-object p2, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->deniedPermissionsList:Ljava/util/List;

    .line 151
    iget-object p3, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->grantedPermissionsList:Ljava/util/List;

    .line 152
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->needToRequestPermissionsList:Ljava/util/List;

    .line 149
    invoke-interface {p1, p2, p3, v0}, Lcom/fluttercandies/photo_manager/permission/PermissionsListener;->onDenied(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 156
    :cond_5
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->permissionsListener:Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->needToRequestPermissionsList:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/fluttercandies/photo_manager/permission/PermissionsListener;->onGranted(Ljava/util/List;)V

    .line 160
    :goto_2
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->resetStatus()V

    .line 161
    iput-boolean v1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->isRequesting:Z

    return-object p0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getAppDetailSettingIntent(Landroid/content/Context;)V
    .locals 4

    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final getAuthValue(IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->delegate:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->context:Landroid/app/Application;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->getAuthValue(Landroid/app/Application;IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    move-result-object p1

    return-object p1
.end method

.method public final getPermissionsListener()Lcom/fluttercandies/photo_manager/permission/PermissionsListener;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->permissionsListener:Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    return-object v0
.end method

.method public final haveLocationPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->delegate:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    invoke-virtual {v0, p1}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->haveMediaLocation(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final isRequesting()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->isRequesting:Z

    return v0
.end method

.method public final presentLimited(ILcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 2

    const-string v0, "resultHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->delegate:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->context:Landroid/app/Application;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->presentLimited(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/app/Application;ILcom/fluttercandies/photo_manager/util/ResultHandler;)V

    return-void
.end method

.method public final requestPermission(Landroid/content/Context;IZ)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->delegate:Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->requestPermission(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;IZ)V

    return-object p0
.end method

.method public final setListener(Lcom/fluttercandies/photo_manager/permission/PermissionsListener;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->permissionsListener:Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    return-object p0
.end method

.method public final setNeedToRequestPermissionsList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->needToRequestPermissionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->needToRequestPermissionsList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final setPermissionsListener(Lcom/fluttercandies/photo_manager/permission/PermissionsListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->permissionsListener:Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    return-void
.end method

.method public final withActivity(Landroid/app/Activity;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->context:Landroid/app/Application;

    return-object p0
.end method
