.class Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;
.super Ljava/lang/Object;
.source "FrameDrawer.java"


# static fields
.field private static final LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private static final NEW_IMAGE_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field private mDrawable:Lcom/otaliastudios/opengl/draw/GlRect;

.field private mFlipY:Z

.field private mFrameAvailable:Z

.field private final mFrameAvailableLock:Ljava/lang/Object;

.field private mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

.field private mRotation:I

.field private mScaleX:F

.field private mScaleY:F

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "FrameDrawer"

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mScaleX:F

    .line 41
    iput v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mScaleY:F

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mRotation:I

    .line 43
    iput-boolean v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mFlipY:Z

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mFrameAvailableLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-direct {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;-><init>()V

    .line 55
    new-instance v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-direct {v1}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>()V

    iput-object v1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    .line 56
    invoke-virtual {v1, v0}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->setTexture(Lcom/otaliastudios/opengl/texture/GlTexture;)V

    .line 57
    new-instance v1, Lcom/otaliastudios/opengl/draw/GlRect;

    invoke-direct {v1}, Lcom/otaliastudios/opengl/draw/GlRect;-><init>()V

    iput-object v1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mDrawable:Lcom/otaliastudios/opengl/draw/GlRect;

    .line 63
    new-instance v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getId()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 64
    new-instance v0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer$1;

    invoke-direct {v0, p0}, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer$1;-><init>(Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;)V

    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 77
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method static synthetic access$000()Lcom/otaliastudios/transcoder/internal/utils/Logger;
    .registers 1

    .line 29
    sget-object v0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;)Ljava/lang/Object;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mFrameAvailableLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;)Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mFrameAvailable:Z

    return p0
.end method

.method static synthetic access$202(Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;Z)Z
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mFrameAvailable:Z

    return p1
.end method

.method private awaitNewFrame()V
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mFrameAvailableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :goto_3
    :try_start_3
    iget-boolean v1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mFrameAvailable:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2c

    if-nez v1, :cond_22

    .line 147
    :try_start_7
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mFrameAvailableLock:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 148
    iget-boolean v1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mFrameAvailable:Z

    if-eqz v1, :cond_13

    goto :goto_3

    .line 151
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Surface frame wait timed out"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_1b} :catch_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_2c

    :catch_1b
    move-exception v1

    .line 154
    :try_start_1c
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_22
    const/4 v1, 0x0

    .line 157
    iput-boolean v1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mFrameAvailable:Z

    .line 158
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2c

    .line 160
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void

    :catchall_2c
    move-exception v1

    .line 158
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private drawNewFrame()V
    .registers 15

    .line 167
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v1}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getTextureTransform()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 169
    iget v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mScaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 170
    iget v2, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mScaleY:F

    div-float v2, v1, v2

    sub-float v3, v1, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v5, v1, v2

    div-float/2addr v5, v4

    .line 174
    iget-object v4, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v4}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getTextureTransform()[F

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v6, v3, v5, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 176
    iget-object v3, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v3}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getTextureTransform()[F

    move-result-object v3

    invoke-static {v3, v6, v0, v2, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 178
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getTextureTransform()[F

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v6, v2, v2, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 179
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getTextureTransform()[F

    move-result-object v8

    const/4 v9, 0x0

    iget v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mRotation:I

    int-to-float v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 180
    iget-boolean v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mFlipY:Z

    if-eqz v0, :cond_5c

    .line 181
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getTextureTransform()[F

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 183
    :cond_5c
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getTextureTransform()[F

    move-result-object v0

    const/high16 v1, -0x41000000    # -0.5f

    invoke-static {v0, v6, v1, v1, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 186
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mDrawable:Lcom/otaliastudios/opengl/draw/GlRect;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->draw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V

    return-void
.end method


# virtual methods
.method public drawFrame()V
    .registers 1

    .line 132
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->awaitNewFrame()V

    .line 133
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->drawNewFrame()V

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public release()V
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->release()V

    .line 117
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mSurface:Landroid/view/Surface;

    .line 122
    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 123
    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mDrawable:Lcom/otaliastudios/opengl/draw/GlRect;

    .line 124
    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    return-void
.end method

.method public setFlipY(Z)V
    .registers 2

    .line 100
    iput-boolean p1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mFlipY:Z

    return-void
.end method

.method public setRotation(I)V
    .registers 2

    .line 96
    iput p1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mRotation:I

    return-void
.end method

.method public setScale(FF)V
    .registers 3

    .line 86
    iput p1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mScaleX:F

    .line 87
    iput p2, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->mScaleY:F

    return-void
.end method
