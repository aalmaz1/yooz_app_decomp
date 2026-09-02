.class public final Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion;
.super Ljava/lang/Object;
.source "PhotoManagerPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion;",
        "",
        "()V",
        "createAddRequestPermissionsResultListener",
        "Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;",
        "permissionsUtils",
        "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
        "register",
        "",
        "plugin",
        "Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;",
        "messenger",
        "Lio/flutter/plugin/common/BinaryMessenger;",
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
.method public static synthetic $r8$lambda$s2WOBG9wfMpUXmzKny6nF3kY4O8(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;I[Ljava/lang/String;[I)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion;->createAddRequestPermissionsResultListener$lambda$1(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;I[Ljava/lang/String;[I)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion;-><init>()V

    return-void
.end method

.method private static final createAddRequestPermissionsResultListener$lambda$1(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;I[Ljava/lang/String;[I)Z
    .registers 5

    const-string v0, "$permissionsUtils"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->dealResult(I[Ljava/lang/String;[I)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final createAddRequestPermissionsResultListener(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;)Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;
    .registers 3

    const-string v0, "permissionsUtils"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion$$ExternalSyntheticLambda0;-><init>(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;)V

    return-object v0
.end method

.method public final register(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;Lio/flutter/plugin/common/BinaryMessenger;)V
    .registers 5

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messenger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "com.fluttercandies/photo_manager"

    invoke-direct {v0, p2, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 22
    check-cast p1, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method
