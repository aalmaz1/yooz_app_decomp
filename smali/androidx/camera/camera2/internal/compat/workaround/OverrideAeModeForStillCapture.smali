.class public Landroidx/camera/camera2/internal/compat/workaround/OverrideAeModeForStillCapture;
.super Ljava/lang/Object;
.source "OverrideAeModeForStillCapture.java"


# instance fields
.field private mAePrecaptureStarted:Z

.field private final mHasAutoFlashUnderExposedQuirk:Z


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/Quirks;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/compat/workaround/OverrideAeModeForStillCapture;->mAePrecaptureStarted:Z

    .line 37
    const-class v1, Landroidx/camera/camera2/internal/compat/quirk/AutoFlashUnderExposedQuirk;

    invoke-virtual {p1, v1}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p1

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :cond_f
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/compat/workaround/OverrideAeModeForStillCapture;->mHasAutoFlashUnderExposedQuirk:Z

    return-void
.end method


# virtual methods
.method public onAePrecaptureFinished()V
    .registers 2

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/compat/workaround/OverrideAeModeForStillCapture;->mAePrecaptureStarted:Z

    return-void
.end method

.method public onAePrecaptureStarted()V
    .registers 2

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/compat/workaround/OverrideAeModeForStillCapture;->mAePrecaptureStarted:Z

    return-void
.end method

.method public shouldSetAeModeAlwaysFlash(I)Z
    .registers 3

    .line 59
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/compat/workaround/OverrideAeModeForStillCapture;->mAePrecaptureStarted:Z

    if-eqz v0, :cond_c

    if-nez p1, :cond_c

    iget-boolean p1, p0, Landroidx/camera/camera2/internal/compat/workaround/OverrideAeModeForStillCapture;->mHasAutoFlashUnderExposedQuirk:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method
