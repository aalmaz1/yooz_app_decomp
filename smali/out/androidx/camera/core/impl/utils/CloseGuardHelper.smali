.class public final Landroidx/camera/core/impl/utils/CloseGuardHelper;
.super Ljava/lang/Object;
.source "CloseGuardHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardImpl;,
        Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardApi30Impl;,
        Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardNoOpImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardImpl;


# direct methods
.method private constructor <init>(Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardImpl;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/camera/core/impl/utils/CloseGuardHelper;->mImpl:Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardImpl;

    return-void
.end method

.method public static create()Landroidx/camera/core/impl/utils/CloseGuardHelper;
    .registers 2

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    .line 47
    new-instance v0, Landroidx/camera/core/impl/utils/CloseGuardHelper;

    new-instance v1, Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardApi30Impl;

    invoke-direct {v1}, Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardApi30Impl;-><init>()V

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/utils/CloseGuardHelper;-><init>(Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardImpl;)V

    return-object v0

    .line 50
    :cond_11
    new-instance v0, Landroidx/camera/core/impl/utils/CloseGuardHelper;

    new-instance v1, Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardNoOpImpl;

    invoke-direct {v1}, Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardNoOpImpl;-><init>()V

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/utils/CloseGuardHelper;-><init>(Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardImpl;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 67
    iget-object v0, p0, Landroidx/camera/core/impl/utils/CloseGuardHelper;->mImpl:Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardImpl;

    invoke-interface {v0}, Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardImpl;->close()V

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .registers 3

    .line 62
    iget-object v0, p0, Landroidx/camera/core/impl/utils/CloseGuardHelper;->mImpl:Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardImpl;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardImpl;->open(Ljava/lang/String;)V

    return-void
.end method

.method public warnIfOpen()V
    .registers 2

    .line 75
    iget-object v0, p0, Landroidx/camera/core/impl/utils/CloseGuardHelper;->mImpl:Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardImpl;

    invoke-interface {v0}, Landroidx/camera/core/impl/utils/CloseGuardHelper$CloseGuardImpl;->warnIfOpen()V

    return-void
.end method
