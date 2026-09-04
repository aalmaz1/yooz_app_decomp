.class public Lcom/king/camera/scan/BaseCameraScan;
.super Lcom/king/camera/scan/CameraScan;
.source "BaseCameraScan.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/king/camera/scan/CameraScan<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final ZOOM_STEP_SIZE:F = 0.1f


# instance fields
.field private flashlightView:Landroid/view/View;

.field private volatile isAnalyze:Z

.field private volatile isAnalyzeResult:Z

.field private volatile isAutoStopAnalyze:Z

.field private isClickTap:Z

.field private mAmbientLightManager:Lcom/king/camera/scan/manager/AmbientLightManager;

.field private mAnalyzer:Lcom/king/camera/scan/analyze/Analyzer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/king/camera/scan/analyze/Analyzer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mBeepManager:Lcom/king/camera/scan/manager/BeepManager;

.field private mCamera:Landroidx/camera/core/Camera;

.field private mCameraConfig:Lcom/king/camera/scan/config/CameraConfig;

.field private mCameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/lifecycle/ProcessCameraProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field private mLastHoveTapTime:J

.field private final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private mOnAnalyzeListener:Lcom/king/camera/scan/analyze/Analyzer$OnAnalyzeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/king/camera/scan/analyze/Analyzer$OnAnalyzeListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mOnScanResultCallback:Lcom/king/camera/scan/CameraScan$OnScanResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/king/camera/scan/CameraScan$OnScanResultCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mPreviewView:Landroidx/camera/view/PreviewView;

.field private mResultLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/king/camera/scan/AnalyzeResult<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmResultLiveData(Lcom/king/camera/scan/BaseCameraScan;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/king/camera/scan/BaseCameraScan;->mResultLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetZoomState(Lcom/king/camera/scan/BaseCameraScan;)Landroidx/camera/core/ZoomState;
    .locals 0

    invoke-direct {p0}, Lcom/king/camera/scan/BaseCameraScan;->getZoomState()Landroidx/camera/core/ZoomState;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/view/PreviewView;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Lcom/king/camera/scan/CameraScan;-><init>()V

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/king/camera/scan/BaseCameraScan;->isAnalyze:Z

    .line 117
    iput-boolean v0, p0, Lcom/king/camera/scan/BaseCameraScan;->isAutoStopAnalyze:Z

    .line 181
    new-instance v0, Lcom/king/camera/scan/BaseCameraScan$1;

    invoke-direct {v0, p0}, Lcom/king/camera/scan/BaseCameraScan$1;-><init>(Lcom/king/camera/scan/BaseCameraScan;)V

    iput-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 172
    iput-object p1, p0, Lcom/king/camera/scan/BaseCameraScan;->mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/king/camera/scan/BaseCameraScan;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 174
    iput-object p3, p0, Lcom/king/camera/scan/BaseCameraScan;->mPreviewView:Landroidx/camera/view/PreviewView;

    .line 175
    invoke-direct {p0}, Lcom/king/camera/scan/BaseCameraScan;->initData()V

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/ComponentActivity;Landroidx/camera/view/PreviewView;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p1, p2}, Lcom/king/camera/scan/BaseCameraScan;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/view/PreviewView;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/camera/view/PreviewView;)V
    .locals 1

    .line 168
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/king/camera/scan/BaseCameraScan;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/view/PreviewView;)V

    return-void
.end method

.method private distance(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 290
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private getZoomState()Landroidx/camera/core/ZoomState;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    .line 531
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ZoomState;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized handleAnalyzeResult(Lcom/king/camera/scan/AnalyzeResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/king/camera/scan/AnalyzeResult<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 362
    :try_start_0
    iget-boolean v0, p0, Lcom/king/camera/scan/BaseCameraScan;->isAnalyzeResult:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/king/camera/scan/BaseCameraScan;->isAnalyze:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lcom/king/camera/scan/BaseCameraScan;->isAnalyzeResult:Z

    .line 366
    iget-boolean v0, p0, Lcom/king/camera/scan/BaseCameraScan;->isAutoStopAnalyze:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 367
    iput-boolean v1, p0, Lcom/king/camera/scan/BaseCameraScan;->isAnalyze:Z

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mBeepManager:Lcom/king/camera/scan/manager/BeepManager;

    if-eqz v0, :cond_2

    .line 370
    invoke-virtual {v0}, Lcom/king/camera/scan/manager/BeepManager;->playBeepSoundAndVibrate()V

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mOnScanResultCallback:Lcom/king/camera/scan/CameraScan$OnScanResultCallback;

    if-eqz v0, :cond_3

    .line 373
    invoke-interface {v0, p1}, Lcom/king/camera/scan/CameraScan$OnScanResultCallback;->onScanResultCallback(Lcom/king/camera/scan/AnalyzeResult;)V

    .line 375
    :cond_3
    iput-boolean v1, p0, Lcom/king/camera/scan/BaseCameraScan;->isAnalyzeResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    .line 363
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handlePreviewViewClickTap(Landroid/view/MotionEvent;)V
    .locals 4

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    iget v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mDownX:F

    iget v2, p0, Lcom/king/camera/scan/BaseCameraScan;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/king/camera/scan/BaseCameraScan;->distance(FFFF)F

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/king/camera/scan/BaseCameraScan;->isClickTap:Z

    goto :goto_1

    .line 269
    :cond_2
    iget-boolean v0, p0, Lcom/king/camera/scan/BaseCameraScan;->isClickTap:Z

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mLastHoveTapTime:J

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/king/camera/scan/BaseCameraScan;->startFocusAndMetering(FF)V

    goto :goto_1

    .line 260
    :cond_3
    iput-boolean v1, p0, Lcom/king/camera/scan/BaseCameraScan;->isClickTap:Z

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mDownX:F

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/king/camera/scan/BaseCameraScan;->mDownY:F

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mLastHoveTapTime:J

    :cond_4
    :goto_1
    return-void
.end method

.method private initData()V
    .locals 3

    .line 202
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mResultLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 203
    iget-object v1, p0, Lcom/king/camera/scan/BaseCameraScan;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/king/camera/scan/BaseCameraScan$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/king/camera/scan/BaseCameraScan$$ExternalSyntheticLambda1;-><init>(Lcom/king/camera/scan/BaseCameraScan;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 211
    new-instance v0, Lcom/king/camera/scan/BaseCameraScan$2;

    invoke-direct {v0, p0}, Lcom/king/camera/scan/BaseCameraScan$2;-><init>(Lcom/king/camera/scan/BaseCameraScan;)V

    iput-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mOnAnalyzeListener:Lcom/king/camera/scan/analyze/Analyzer$OnAnalyzeListener;

    .line 224
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/king/camera/scan/BaseCameraScan;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/king/camera/scan/BaseCameraScan;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 225
    iget-object v1, p0, Lcom/king/camera/scan/BaseCameraScan;->mPreviewView:Landroidx/camera/view/PreviewView;

    new-instance v2, Lcom/king/camera/scan/BaseCameraScan$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/king/camera/scan/BaseCameraScan$$ExternalSyntheticLambda2;-><init>(Lcom/king/camera/scan/BaseCameraScan;Landroid/view/ScaleGestureDetector;)V

    invoke-virtual {v1, v2}, Landroidx/camera/view/PreviewView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 233
    new-instance v0, Lcom/king/camera/scan/manager/BeepManager;

    iget-object v1, p0, Lcom/king/camera/scan/BaseCameraScan;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/king/camera/scan/manager/BeepManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mBeepManager:Lcom/king/camera/scan/manager/BeepManager;

    .line 234
    new-instance v0, Lcom/king/camera/scan/manager/AmbientLightManager;

    iget-object v1, p0, Lcom/king/camera/scan/BaseCameraScan;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/king/camera/scan/manager/AmbientLightManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mAmbientLightManager:Lcom/king/camera/scan/manager/AmbientLightManager;

    .line 235
    invoke-virtual {v0}, Lcom/king/camera/scan/manager/AmbientLightManager;->register()V

    .line 236
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mAmbientLightManager:Lcom/king/camera/scan/manager/AmbientLightManager;

    new-instance v1, Lcom/king/camera/scan/BaseCameraScan$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/king/camera/scan/BaseCameraScan$$ExternalSyntheticLambda3;-><init>(Lcom/king/camera/scan/BaseCameraScan;)V

    invoke-virtual {v0, v1}, Lcom/king/camera/scan/manager/AmbientLightManager;->setOnLightSensorEventListener(Lcom/king/camera/scan/manager/AmbientLightManager$OnLightSensorEventListener;)V

    return-void
.end method

.method private startFocusAndMetering(FF)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mPreviewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroidx/camera/view/PreviewView;->getMeteringPointFactory()Landroidx/camera/core/MeteringPointFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/camera/core/MeteringPointFactory;->createPoint(FF)Landroidx/camera/core/MeteringPoint;

    move-result-object v0

    .line 302
    new-instance v1, Landroidx/camera/core/FocusMeteringAction$Builder;

    invoke-direct {v1, v0}, Landroidx/camera/core/FocusMeteringAction$Builder;-><init>(Landroidx/camera/core/MeteringPoint;)V

    invoke-virtual {v1}, Landroidx/camera/core/FocusMeteringAction$Builder;->build()Landroidx/camera/core/FocusMeteringAction;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/camera/core/CameraInfo;->isFocusMeteringSupported(Landroidx/camera/core/FocusMeteringAction;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/camera/core/CameraControl;->startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startFocusAndMetering: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/king/camera/scan/util/LogUtils;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindFlashlightView(Landroid/view/View;)Lcom/king/camera/scan/CameraScan;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/king/camera/scan/CameraScan<",
            "TT;>;"
        }
    .end annotation

    .line 551
    iput-object p1, p0, Lcom/king/camera/scan/BaseCameraScan;->flashlightView:Landroid/view/View;

    .line 552
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mAmbientLightManager:Lcom/king/camera/scan/manager/AmbientLightManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 553
    :goto_0
    invoke-virtual {v0, p1}, Lcom/king/camera/scan/manager/AmbientLightManager;->setLightSensorEnabled(Z)V

    :cond_1
    return-object p0
.end method

.method public enableTorch(Z)V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/king/camera/scan/BaseCameraScan;->hasFlashUnit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void
.end method

.method public getCamera()Landroidx/camera/core/Camera;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    return-object v0
.end method

.method public hasFlashUnit()Z
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    .line 490
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->hasFlashUnit()Z

    move-result v0

    return v0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTorchEnabled()Z
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 481
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getTorchState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method synthetic lambda$initData$0$com-king-camera-scan-BaseCameraScan(Lcom/king/camera/scan/AnalyzeResult;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 205
    invoke-direct {p0, p1}, Lcom/king/camera/scan/BaseCameraScan;->handleAnalyzeResult(Lcom/king/camera/scan/AnalyzeResult;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/king/camera/scan/BaseCameraScan;->mOnScanResultCallback:Lcom/king/camera/scan/CameraScan$OnScanResultCallback;

    if-eqz p1, :cond_1

    .line 207
    invoke-interface {p1}, Lcom/king/camera/scan/CameraScan$OnScanResultCallback;->onScanResultFailure()V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$initData$1$com-king-camera-scan-BaseCameraScan(Landroid/view/ScaleGestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 226
    invoke-direct {p0, p3}, Lcom/king/camera/scan/BaseCameraScan;->handlePreviewViewClickTap(Landroid/view/MotionEvent;)V

    .line 227
    invoke-virtual {p0}, Lcom/king/camera/scan/BaseCameraScan;->isNeedTouchZoom()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 228
    invoke-virtual {p1, p3}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$initData$2$com-king-camera-scan-BaseCameraScan(ZF)V
    .locals 1

    .line 237
    iget-object p2, p0, Lcom/king/camera/scan/BaseCameraScan;->flashlightView:Landroid/view/View;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/king/camera/scan/BaseCameraScan;->flashlightView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lcom/king/camera/scan/BaseCameraScan;->flashlightView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/king/camera/scan/BaseCameraScan;->isTorchEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/king/camera/scan/BaseCameraScan;->isTorchEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/king/camera/scan/BaseCameraScan;->flashlightView:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/king/camera/scan/BaseCameraScan;->flashlightView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$startCamera$3$com-king-camera-scan-BaseCameraScan(Landroidx/camera/core/ImageProxy;)V
    .locals 2

    .line 337
    iget-boolean v0, p0, Lcom/king/camera/scan/BaseCameraScan;->isAnalyze:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/king/camera/scan/BaseCameraScan;->isAnalyzeResult:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mAnalyzer:Lcom/king/camera/scan/analyze/Analyzer;

    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/king/camera/scan/BaseCameraScan;->mOnAnalyzeListener:Lcom/king/camera/scan/analyze/Analyzer$OnAnalyzeListener;

    invoke-interface {v0, p1, v1}, Lcom/king/camera/scan/analyze/Analyzer;->analyze(Landroidx/camera/core/ImageProxy;Lcom/king/camera/scan/analyze/Analyzer$OnAnalyzeListener;)V

    .line 340
    :cond_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    return-void
.end method

.method synthetic lambda$startCamera$4$com-king-camera-scan-BaseCameraScan()V
    .locals 10

    const-string v0, "ImageAnalysis resolution: "

    const-string v1, "Preview resolution: "

    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/king/camera/scan/BaseCameraScan;->mCameraConfig:Lcom/king/camera/scan/config/CameraConfig;

    new-instance v3, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {v3}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    invoke-virtual {v2, v3}, Lcom/king/camera/scan/config/CameraConfig;->options(Landroidx/camera/core/CameraSelector$Builder;)Landroidx/camera/core/CameraSelector;

    move-result-object v2

    .line 329
    iget-object v3, p0, Lcom/king/camera/scan/BaseCameraScan;->mCameraConfig:Lcom/king/camera/scan/config/CameraConfig;

    new-instance v4, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v4}, Landroidx/camera/core/Preview$Builder;-><init>()V

    invoke-virtual {v3, v4}, Lcom/king/camera/scan/config/CameraConfig;->options(Landroidx/camera/core/Preview$Builder;)Landroidx/camera/core/Preview;

    move-result-object v3

    .line 331
    iget-object v4, p0, Lcom/king/camera/scan/BaseCameraScan;->mPreviewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v4}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 333
    iget-object v4, p0, Lcom/king/camera/scan/BaseCameraScan;->mCameraConfig:Lcom/king/camera/scan/config/CameraConfig;

    new-instance v5, Landroidx/camera/core/ImageAnalysis$Builder;

    invoke-direct {v5}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    const/4 v6, 0x1

    .line 334
    invoke-virtual {v5, v6}, Landroidx/camera/core/ImageAnalysis$Builder;->setOutputImageFormat(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v5

    const/4 v7, 0x0

    .line 335
    invoke-virtual {v5, v7}, Landroidx/camera/core/ImageAnalysis$Builder;->setBackpressureStrategy(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v5

    .line 333
    invoke-virtual {v4, v5}, Lcom/king/camera/scan/config/CameraConfig;->options(Landroidx/camera/core/ImageAnalysis$Builder;)Landroidx/camera/core/ImageAnalysis;

    move-result-object v4

    .line 336
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v8, Lcom/king/camera/scan/BaseCameraScan$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/king/camera/scan/BaseCameraScan$$ExternalSyntheticLambda0;-><init>(Lcom/king/camera/scan/BaseCameraScan;)V

    invoke-virtual {v4, v5, v8}, Landroidx/camera/core/ImageAnalysis;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 342
    iget-object v5, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v5, :cond_0

    .line 343
    iget-object v5, p0, Lcom/king/camera/scan/BaseCameraScan;->mCameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v5}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v5}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 346
    :cond_0
    iget-object v5, p0, Lcom/king/camera/scan/BaseCameraScan;->mCameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v5}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/lifecycle/ProcessCameraProvider;

    iget-object v8, p0, Lcom/king/camera/scan/BaseCameraScan;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const/4 v9, 0x2

    new-array v9, v9, [Landroidx/camera/core/UseCase;

    aput-object v3, v9, v7

    aput-object v4, v9, v6

    invoke-virtual {v5, v8, v2, v9}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/camera/core/Preview;->getResolutionInfo()Landroidx/camera/core/ResolutionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/ResolutionInfo;->getResolution()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/king/camera/scan/util/LogUtils;->d(Ljava/lang/String;)V

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/camera/core/ImageAnalysis;->getResolutionInfo()Landroidx/camera/core/ResolutionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/ResolutionInfo;->getResolution()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/camera/scan/util/LogUtils;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 350
    invoke-static {v0}, Lcom/king/camera/scan/util/LogUtils;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public lineZoomIn()V
    .locals 2

    .line 444
    invoke-direct {p0}, Lcom/king/camera/scan/BaseCameraScan;->getZoomState()Landroidx/camera/core/ZoomState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getLinearZoom()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/camera/core/CameraControl;->setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void
.end method

.method public lineZoomOut()V
    .locals 2

    .line 455
    invoke-direct {p0}, Lcom/king/camera/scan/BaseCameraScan;->getZoomState()Landroidx/camera/core/ZoomState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getLinearZoom()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/camera/core/CameraControl;->setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void
.end method

.method public lineZoomTo(F)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/camera/core/CameraControl;->setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 538
    iput-boolean v0, p0, Lcom/king/camera/scan/BaseCameraScan;->isAnalyze:Z

    const/4 v0, 0x0

    .line 539
    iput-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->flashlightView:Landroid/view/View;

    .line 540
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mAmbientLightManager:Lcom/king/camera/scan/manager/AmbientLightManager;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Lcom/king/camera/scan/manager/AmbientLightManager;->unregister()V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mBeepManager:Lcom/king/camera/scan/manager/BeepManager;

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {v0}, Lcom/king/camera/scan/manager/BeepManager;->close()V

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/king/camera/scan/BaseCameraScan;->stopCamera()V

    return-void
.end method

.method public setAnalyzeImage(Z)Lcom/king/camera/scan/CameraScan;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/king/camera/scan/CameraScan<",
            "TT;>;"
        }
    .end annotation

    .line 391
    iput-boolean p1, p0, Lcom/king/camera/scan/BaseCameraScan;->isAnalyze:Z

    return-object p0
.end method

.method public setAnalyzer(Lcom/king/camera/scan/analyze/Analyzer;)Lcom/king/camera/scan/CameraScan;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/king/camera/scan/analyze/Analyzer<",
            "TT;>;)",
            "Lcom/king/camera/scan/CameraScan<",
            "TT;>;"
        }
    .end annotation

    .line 403
    iput-object p1, p0, Lcom/king/camera/scan/BaseCameraScan;->mAnalyzer:Lcom/king/camera/scan/analyze/Analyzer;

    return-object p0
.end method

.method public setAutoStopAnalyze(Z)Lcom/king/camera/scan/CameraScan;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/king/camera/scan/CameraScan<",
            "TT;>;"
        }
    .end annotation

    .line 397
    iput-boolean p1, p0, Lcom/king/camera/scan/BaseCameraScan;->isAutoStopAnalyze:Z

    return-object p0
.end method

.method public setBrightLightLux(F)Lcom/king/camera/scan/CameraScan;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/king/camera/scan/CameraScan<",
            "TT;>;"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mAmbientLightManager:Lcom/king/camera/scan/manager/AmbientLightManager;

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0, p1}, Lcom/king/camera/scan/manager/AmbientLightManager;->setBrightLightLux(F)V

    :cond_0
    return-object p0
.end method

.method public setCameraConfig(Lcom/king/camera/scan/config/CameraConfig;)Lcom/king/camera/scan/CameraScan;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/king/camera/scan/config/CameraConfig;",
            ")",
            "Lcom/king/camera/scan/CameraScan<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 313
    iput-object p1, p0, Lcom/king/camera/scan/BaseCameraScan;->mCameraConfig:Lcom/king/camera/scan/config/CameraConfig;

    :cond_0
    return-object p0
.end method

.method public setDarkLightLux(F)Lcom/king/camera/scan/CameraScan;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/king/camera/scan/CameraScan<",
            "TT;>;"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mAmbientLightManager:Lcom/king/camera/scan/manager/AmbientLightManager;

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0, p1}, Lcom/king/camera/scan/manager/AmbientLightManager;->setDarkLightLux(F)V

    :cond_0
    return-object p0
.end method

.method public setOnScanResultCallback(Lcom/king/camera/scan/CameraScan$OnScanResultCallback;)Lcom/king/camera/scan/CameraScan;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/king/camera/scan/CameraScan$OnScanResultCallback<",
            "TT;>;)",
            "Lcom/king/camera/scan/CameraScan<",
            "TT;>;"
        }
    .end annotation

    .line 513
    iput-object p1, p0, Lcom/king/camera/scan/BaseCameraScan;->mOnScanResultCallback:Lcom/king/camera/scan/CameraScan$OnScanResultCallback;

    return-object p0
.end method

.method public setPlayBeep(Z)Lcom/king/camera/scan/CameraScan;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/king/camera/scan/CameraScan<",
            "TT;>;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mBeepManager:Lcom/king/camera/scan/manager/BeepManager;

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0, p1}, Lcom/king/camera/scan/manager/BeepManager;->setPlayBeep(Z)V

    :cond_0
    return-object p0
.end method

.method public setVibrate(Z)Lcom/king/camera/scan/CameraScan;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/king/camera/scan/CameraScan<",
            "TT;>;"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mBeepManager:Lcom/king/camera/scan/manager/BeepManager;

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0, p1}, Lcom/king/camera/scan/manager/BeepManager;->setVibrate(Z)V

    :cond_0
    return-object p0
.end method

.method public startCamera()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mCameraConfig:Lcom/king/camera/scan/config/CameraConfig;

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/king/camera/scan/config/CameraConfigFactory;->createDefaultCameraConfig(Landroid/content/Context;I)Lcom/king/camera/scan/config/CameraConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mCameraConfig:Lcom/king/camera/scan/config/CameraConfig;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mCameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 324
    new-instance v1, Lcom/king/camera/scan/BaseCameraScan$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/king/camera/scan/BaseCameraScan$$ExternalSyntheticLambda4;-><init>(Lcom/king/camera/scan/BaseCameraScan;)V

    iget-object v2, p0, Lcom/king/camera/scan/BaseCameraScan;->mContext:Landroid/content/Context;

    .line 353
    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 324
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public stopCamera()V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mCameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 382
    :try_start_0
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 384
    invoke-static {v0}, Lcom/king/camera/scan/util/LogUtils;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public zoomIn()V
    .locals 3

    .line 409
    invoke-direct {p0}, Lcom/king/camera/scan/BaseCameraScan;->getZoomState()Landroidx/camera/core/ZoomState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getZoomRatio()F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v1, v2

    .line 412
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getMaxZoomRatio()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void
.end method

.method public zoomOut()V
    .locals 3

    .line 421
    invoke-direct {p0}, Lcom/king/camera/scan/BaseCameraScan;->getZoomState()Landroidx/camera/core/ZoomState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getZoomRatio()F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    sub-float/2addr v1, v2

    .line 424
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getMinZoomRatio()F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void
.end method

.method public zoomTo(F)V
    .locals 2

    .line 433
    invoke-direct {p0}, Lcom/king/camera/scan/BaseCameraScan;->getZoomState()Landroidx/camera/core/ZoomState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getMaxZoomRatio()F

    move-result v1

    .line 436
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getMinZoomRatio()F

    move-result v0

    .line 437
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 438
    iget-object v0, p0, Lcom/king/camera/scan/BaseCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void
.end method
