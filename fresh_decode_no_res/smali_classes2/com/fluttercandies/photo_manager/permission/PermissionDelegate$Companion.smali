.class public final Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;
.super Ljava/lang/Object;
.source "PermissionDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;",
        "",
        "()V",
        "limitedRequestCode",
        "",
        "requestCode",
        "create",
        "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;
    .locals 5

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_1

    .line 132
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;-><init>()V

    check-cast v0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    goto :goto_3

    :cond_1
    if-ne v0, v1, :cond_2

    .line 133
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;-><init>()V

    check-cast v0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    goto :goto_3

    :cond_2
    const/16 v1, 0x1e

    const/16 v4, 0x21

    if-gt v1, v0, :cond_3

    if-ge v0, v4, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    if-eqz v1, :cond_4

    .line 134
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate30;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate30;-><init>()V

    check-cast v0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    goto :goto_3

    :cond_4
    if-ne v0, v4, :cond_5

    .line 135
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33;-><init>()V

    check-cast v0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    goto :goto_3

    :cond_5
    const/16 v1, 0x22

    if-gt v1, v0, :cond_6

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    if-eqz v2, :cond_7

    .line 136
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;-><init>()V

    check-cast v0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    :goto_3
    return-object v0

    .line 137
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This sdk version is not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
