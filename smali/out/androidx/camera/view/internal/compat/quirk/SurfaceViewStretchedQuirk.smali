.class public Landroidx/camera/view/internal/compat/quirk/SurfaceViewStretchedQuirk;
.super Ljava/lang/Object;
.source "SurfaceViewStretchedQuirk.java"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# static fields
.field private static final GALAXY_Z_FOLD_2:Ljava/lang/String; = "F2Q"

.field private static final GALAXY_Z_FOLD_3:Ljava/lang/String; = "Q2Q"

.field private static final LENOVO:Ljava/lang/String; = "LENOVO"

.field private static final LENOVO_TAB_P12_PRO:Ljava/lang/String; = "Q706F"

.field private static final OPPO:Ljava/lang/String; = "OPPO"

.field private static final OPPO_FIND_N:Ljava/lang/String; = "OP4E75L1"

.field private static final SAMSUNG:Ljava/lang/String; = "SAMSUNG"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isLenovoTablet()Z
    .registers 2

    const-string v0, "LENOVO"

    .line 64
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Q706F"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private static isOppoFoldable()Z
    .registers 2

    const-string v0, "OPPO"

    .line 59
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "OP4E75L1"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private static isSamsungFold2OrFold3()Z
    .registers 2

    const-string v0, "SAMSUNG"

    .line 53
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "F2Q"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "Q2Q"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method static load()Z
    .registers 2

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_1a

    .line 49
    invoke-static {}, Landroidx/camera/view/internal/compat/quirk/SurfaceViewStretchedQuirk;->isSamsungFold2OrFold3()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Landroidx/camera/view/internal/compat/quirk/SurfaceViewStretchedQuirk;->isOppoFoldable()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Landroidx/camera/view/internal/compat/quirk/SurfaceViewStretchedQuirk;->isLenovoTablet()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method
