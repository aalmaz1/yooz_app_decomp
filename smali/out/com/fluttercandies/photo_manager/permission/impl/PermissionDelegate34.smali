.class public final Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;
.super Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;
.source "PermissionDelegate34.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34$Companion;,
        Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010!\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016Je\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00162\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00162\u0006\u0010\u0019\u001a\u00020\u0008H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000fH\u0016J\u0018\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\u001d\u001a\u00020\nH\u0016J(\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u00082\u0006\u0010 \u001a\u00020!H\u0016J(\u0010\"\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006$"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;",
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
        "handlePermissionResult",
        "",
        "permissionsUtils",
        "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
        "Landroid/content/Context;",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "needToRequestPermissionsList",
        "",
        "deniedPermissionsList",
        "grantedPermissionsList",
        "requestCode",
        "(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;[Ljava/lang/String;[ILjava/util/List;Ljava/util/List;Ljava/util/List;I)V",
        "haveMediaLocation",
        "havePermissions",
        "isHandlePermissionResult",
        "presentLimited",
        "type",
        "resultHandler",
        "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
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
.field public static final Companion:Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34$Companion;

.field private static final mediaAudio:Ljava/lang/String; = "android.permission.READ_MEDIA_AUDIO"

.field private static final mediaImage:Ljava/lang/String; = "android.permission.READ_MEDIA_IMAGES"

.field private static final mediaLocationPermission:Ljava/lang/String; = "android.permission.ACCESS_MEDIA_LOCATION"

.field private static final mediaVideo:Ljava/lang/String; = "android.permission.READ_MEDIA_VIDEO"

.field private static final mediaVisualUserSelected:Ljava/lang/String; = "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->Companion:Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;-><init>()V

    return-void
.end method

.method private static final getAuthValue$changeResult(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;",
            ">;",
            "Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;",
            ")V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->NotDetermined:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    if-ne v0, v1, :cond_9

    .line 204
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void

    .line 208
    :cond_9
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    sget-object v1, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_31

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1f

    goto :goto_3d

    .line 221
    :cond_1f
    sget-object p1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Limited:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_3d

    .line 216
    :cond_24
    sget-object v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Limited:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    if-eq p1, v0, :cond_2c

    sget-object v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Denied:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    if-ne p1, v0, :cond_3d

    .line 217
    :cond_2c
    sget-object p1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Limited:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_3d

    .line 210
    :cond_31
    sget-object v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Limited:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    if-eq p1, v0, :cond_39

    sget-object v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Authorized:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    if-ne p1, v0, :cond_3d

    .line 211
    :cond_39
    sget-object p1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Limited:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_3d
    :goto_3d
    return-void
.end method


# virtual methods
.method public getAuthValue(Landroid/app/Application;IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;
    .registers 7

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->NotDetermined:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    iput-object v0, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;

    invoke-virtual {v0, p2}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->containsImage(I)Z

    move-result v0

    .line 228
    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;

    invoke-virtual {v1, p2}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->containsVideo(I)Z

    move-result v1

    .line 229
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;

    invoke-virtual {v2, p2}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->containsAudio(I)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 232
    move-object p2, p1

    check-cast p2, Landroid/content/Context;

    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->havePermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 233
    sget-object p2, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Authorized:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    goto :goto_36

    .line 235
    :cond_34
    sget-object p2, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Denied:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    .line 238
    :goto_36
    invoke-static {p3, p2}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->getAuthValue$changeResult(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;)V

    :cond_39
    const-string p2, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    if-eqz v1, :cond_5d

    .line 242
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-string v2, "android.permission.READ_MEDIA_VIDEO"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->havePermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 243
    sget-object v1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Authorized:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    goto :goto_5a

    .line 244
    :cond_4f
    invoke-virtual {p0, v1, p2}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->havePermissionForUser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 245
    sget-object v1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Limited:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    goto :goto_5a

    .line 247
    :cond_58
    sget-object v1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Denied:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    .line 250
    :goto_5a
    invoke-static {p3, v1}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->getAuthValue$changeResult(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;)V

    :cond_5d
    if-eqz v0, :cond_7e

    .line 254
    check-cast p1, Landroid/content/Context;

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->havePermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 255
    sget-object p1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Authorized:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    goto :goto_7b

    .line 256
    :cond_70
    invoke-virtual {p0, p1, p2}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->havePermissionForUser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 257
    sget-object p1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Limited:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    goto :goto_7b

    .line 259
    :cond_79
    sget-object p1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Denied:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    .line 262
    :goto_7b
    invoke-static {p3, p1}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->getAuthValue$changeResult(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;)V

    .line 265
    :cond_7e
    iget-object p1, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    return-object p1
.end method

.method public handlePermissionResult(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;[Ljava/lang/String;[ILjava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .registers 26
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    const-string v5, "permissionsUtils"

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "permissions"

    move-object/from16 v7, p3

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "grantResults"

    move-object/from16 v7, p4

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "needToRequestPermissionsList"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "deniedPermissionsList"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "grantedPermissionsList"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0xbba

    const/4 v7, 0x1

    move/from16 v8, p8

    if-ne v8, v5, :cond_4d

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->getResultHandler()Lcom/fluttercandies/photo_manager/util/ResultHandler;

    move-result-object v1

    if-nez v1, :cond_41

    return-void

    :cond_41
    const/4 v2, 0x0

    .line 123
    invoke-virtual {v0, v2}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->setResultHandler(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    .line 124
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void

    :cond_4d
    const-string v5, "android.permission.READ_MEDIA_IMAGES"

    .line 128
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "android.permission.READ_MEDIA_VIDEO"

    .line 129
    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "android.permission.READ_MEDIA_AUDIO"

    .line 130
    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 131
    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 133
    invoke-interface {v2, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v8, :cond_74

    if-nez v10, :cond_74

    if-eqz v16, :cond_72

    goto :goto_74

    :cond_72
    move v5, v7

    goto :goto_7c

    .line 140
    :cond_74
    :goto_74
    filled-new-array {v15, v5, v9}, [Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual {v0, v1, v5}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->haveAnyPermissionForUser(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    :goto_7c
    const/4 v8, 0x0

    if-eqz v12, :cond_8a

    if-eqz v5, :cond_89

    .line 147
    invoke-virtual {v0, v1, v11}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->havePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    move v5, v7

    goto :goto_8a

    :cond_89
    move v5, v8

    :cond_8a
    :goto_8a
    if-eqz v14, :cond_97

    if-eqz v5, :cond_95

    .line 151
    invoke-virtual {v0, v1, v13}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->havePermissionForUser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    goto :goto_96

    :cond_95
    move v7, v8

    :goto_96
    move v5, v7

    .line 154
    :cond_97
    invoke-virtual/range {p1 .. p1}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->getPermissionsListener()Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    move-result-object v1

    if-nez v1, :cond_9e

    return-void

    :cond_9e
    if-eqz v5, :cond_a4

    .line 157
    invoke-interface {v1, v2}, Lcom/fluttercandies/photo_manager/permission/PermissionsListener;->onGranted(Ljava/util/List;)V

    goto :goto_a7

    .line 159
    :cond_a4
    invoke-interface {v1, v3, v4, v2}, Lcom/fluttercandies/photo_manager/permission/PermissionsListener;->onDenied(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :goto_a7
    return-void
.end method

.method public haveMediaLocation(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->havePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public havePermissions(Landroid/content/Context;I)Z
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;

    invoke-virtual {v0, p2}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->containsImage(I)Z

    move-result v0

    .line 89
    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;

    invoke-virtual {v1, p2}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->containsVideo(I)Z

    move-result v1

    .line 90
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;

    invoke-virtual {v2, p2}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->containsAudio(I)Z

    move-result p2

    const/4 v2, 0x1

    if-nez v1, :cond_1f

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    move v0, v2

    goto :goto_25

    :cond_1f
    :goto_1f
    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->havePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_25
    if-eqz p2, :cond_34

    if-eqz v0, :cond_32

    const-string p2, "android.permission.READ_MEDIA_AUDIO"

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->havePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    move v0, v2

    :cond_34
    return v0
.end method

.method public isHandlePermissionResult()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public presentLimited(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/app/Application;ILcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .registers 6

    const-string v0, "permissionsUtils"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "resultHandler"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, p4}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->setResultHandler(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    .line 175
    sget-object p2, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;

    invoke-virtual {p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->containsImage(I)Z

    move-result p2

    .line 176
    sget-object p4, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;

    invoke-virtual {p4, p3}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->containsVideo(I)Z

    move-result p3

    .line 178
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    check-cast p4, Ljava/util/List;

    if-nez p3, :cond_29

    if-eqz p2, :cond_2e

    :cond_29
    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 181
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    if-eqz p3, :cond_35

    const-string p3, "android.permission.READ_MEDIA_VIDEO"

    .line 185
    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    if-eqz p2, :cond_3c

    const-string p2, "android.permission.READ_MEDIA_IMAGES"

    .line 189
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    const/16 p2, 0xbba

    .line 192
    invoke-virtual {p0, p1, p4, p2}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->requestPermission(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Ljava/util/List;I)V

    return-void
.end method

.method public requestPermission(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;IZ)V
    .registers 14

    const-string v0, "permissionsUtils"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p2, p3}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->havePermissions(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 36
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->getPermissionsListener()Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    move-result-object p1

    if-eqz p1, :cond_20

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/fluttercandies/photo_manager/permission/PermissionsListener;->onGranted(Ljava/util/List;)V

    :cond_20
    return-void

    :cond_21
    const-string v0, "requestPermission"

    .line 40
    invoke-static {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->info(Ljava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;

    invoke-virtual {v0, p3}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->containsImage(I)Z

    move-result v0

    .line 44
    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;

    invoke-virtual {v1, p3}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->containsVideo(I)Z

    move-result v1

    .line 45
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;

    invoke-virtual {v2, p3}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->containsAudio(I)Z

    move-result p3

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v2

    check-cast v5, Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_49

    if-eqz v0, :cond_47

    goto :goto_49

    :cond_47
    move v4, v3

    goto :goto_72

    :cond_49
    :goto_49
    const-string v4, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 50
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p0, p2, v4}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->havePermissionForUser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz p4, :cond_64

    const-string p4, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 58
    invoke-interface {v5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_63

    .line 59
    invoke-virtual {p0, p2, p4}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->havePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_63

    move v4, v3

    goto :goto_64

    :cond_63
    move v4, v2

    :cond_64
    :goto_64
    if-eqz v1, :cond_6b

    const-string p4, "android.permission.READ_MEDIA_VIDEO"

    .line 63
    invoke-interface {v5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6b
    if-eqz v0, :cond_72

    const-string p4, "android.permission.READ_MEDIA_IMAGES"

    .line 67
    invoke-interface {v5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_72
    :goto_72
    if-eqz p3, :cond_83

    const-string p3, "android.permission.READ_MEDIA_AUDIO"

    .line 73
    invoke-interface {v5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_82

    .line 74
    invoke-virtual {p0, p2, p3}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;->havePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_82

    move v2, v3

    :cond_82
    move v4, v2

    .line 77
    :cond_83
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Current permissions: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/fluttercandies/photo_manager/util/LogUtils;->info(Ljava/lang/Object;)V

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "havePermission: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/fluttercandies/photo_manager/util/LogUtils;->info(Ljava/lang/Object;)V

    if-eqz v4, :cond_b3

    .line 81
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->getPermissionsListener()Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    move-result-object p1

    if-eqz p1, :cond_bd

    invoke-interface {p1, v5}, Lcom/fluttercandies/photo_manager/permission/PermissionsListener;->onGranted(Ljava/util/List;)V

    goto :goto_bd

    .line 83
    :cond_b3
    move-object v3, p0

    check-cast v3, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->requestPermission$default(Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Ljava/util/List;IILjava/lang/Object;)V

    :cond_bd
    :goto_bd
    return-void
.end method
