.class public Landroidx/camera/camera2/internal/compat/workaround/StillCaptureFlow;
.super Ljava/lang/Object;
.source "StillCaptureFlow.java"


# instance fields
.field private final mShouldStopRepeatingBeforeStillCapture:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Landroidx/camera/camera2/internal/compat/quirk/StillCaptureFlashStopRepeatingQuirk;

    invoke-static {v0}, Landroidx/camera/camera2/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/internal/compat/quirk/StillCaptureFlashStopRepeatingQuirk;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 39
    :goto_10
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/compat/workaround/StillCaptureFlow;->mShouldStopRepeatingBeforeStillCapture:Z

    return-void
.end method


# virtual methods
.method public shouldStopRepeatingBeforeCapture(Ljava/util/List;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;Z)Z"
        }
    .end annotation

    .line 51
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/compat/workaround/StillCaptureFlow;->mShouldStopRepeatingBeforeStillCapture:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    if-nez p2, :cond_8

    goto :goto_2c

    .line 55
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CaptureRequest;

    .line 56
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2a

    const/4 v0, 0x3

    if-ne p2, v0, :cond_c

    :cond_2a
    const/4 p1, 0x1

    return p1

    :cond_2c
    :goto_2c
    return v1
.end method
