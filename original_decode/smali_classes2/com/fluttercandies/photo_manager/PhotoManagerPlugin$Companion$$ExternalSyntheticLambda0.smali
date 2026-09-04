.class public final synthetic Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# instance fields
.field public final synthetic f$0:Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion$$ExternalSyntheticLambda0;->f$0:Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    return-void
.end method


# virtual methods
.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 1

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion$$ExternalSyntheticLambda0;->f$0:Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    invoke-static {v0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion;->$r8$lambda$s2WOBG9wfMpUXmzKny6nF3kY4O8(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;I[Ljava/lang/String;[I)Z

    move-result p1

    return p1
.end method
