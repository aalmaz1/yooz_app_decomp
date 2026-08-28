.class public final Landroidx/camera/core/impl/utils/CameraOrientationUtil;
.super Ljava/lang/Object;
.source "CameraOrientationUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraOrientationUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static degreesToSurfaceRotation(I)I
    .registers 4

    if-eqz p0, :cond_29

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_27

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_25

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_10

    const/4 p0, 0x3

    goto :goto_2a

    .line 131
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid sensor rotation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    const/4 p0, 0x2

    goto :goto_2a

    :cond_27
    const/4 p0, 0x1

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    return p0
.end method

.method public static getRelativeImageRotation(IIZ)I
    .registers 7

    if-eqz p2, :cond_9

    sub-int v0, p1, p0

    add-int/lit16 v0, v0, 0x168

    .line 53
    rem-int/lit16 v0, v0, 0x168

    goto :goto_d

    :cond_9
    add-int v0, p1, p0

    .line 55
    rem-int/lit16 v0, v0, 0x168

    :goto_d
    const-string v1, "CameraOrientationUtil"

    .line 57
    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, p0

    const/4 p0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "getRelativeImageRotation: destRotationDegrees=%s, sourceRotationDegrees=%s, isOppositeFacing=%s, result=%s"

    .line 60
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-static {v1, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    return v0
.end method

.method public static surfaceRotationToDegrees(I)I
    .registers 4

    if-eqz p0, :cond_29

    const/4 v0, 0x1

    if-eq p0, v0, :cond_26

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/4 v0, 0x3

    if-ne p0, v0, :cond_e

    const/16 p0, 0x10e

    goto :goto_2a

    .line 97
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported surface rotation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    const/16 p0, 0xb4

    goto :goto_2a

    :cond_26
    const/16 p0, 0x5a

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    return p0
.end method
