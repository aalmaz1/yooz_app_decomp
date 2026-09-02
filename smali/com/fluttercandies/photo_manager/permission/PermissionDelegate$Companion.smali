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
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;
    .registers 6

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_a

    move v4, v2

    goto :goto_b

    :cond_a
    move v4, v3

    :goto_b
    if-eqz v4, :cond_15

    .line 132
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate23;-><init>()V

    check-cast v0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    goto :goto_52

    :cond_15
    if-ne v0, v1, :cond_1f

    .line 133
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;-><init>()V

    check-cast v0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    goto :goto_52

    :cond_1f
    const/16 v1, 0x1e

    const/16 v4, 0x21

    if-gt v1, v0, :cond_29

    if-ge v0, v4, :cond_29

    move v1, v2

    goto :goto_2a

    :cond_29
    move v1, v3

    :goto_2a
    if-eqz v1, :cond_34

    .line 134
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate30;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate30;-><init>()V

    check-cast v0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    goto :goto_52

    :cond_34
    if-ne v0, v4, :cond_3e

    .line 135
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33;-><init>()V

    check-cast v0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    goto :goto_52

    :cond_3e
    const/16 v1, 0x22

    if-gt v1, v0, :cond_48

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_48

    goto :goto_49

    :cond_48
    move v2, v3

    :goto_49
    if-eqz v2, :cond_53

    .line 136
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;-><init>()V

    check-cast v0, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;

    :goto_52
    return-object v0

    .line 137
    :cond_53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This sdk version is not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
