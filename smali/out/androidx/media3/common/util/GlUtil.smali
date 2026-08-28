.class public final Landroidx/media3/common/util/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/GlUtil$GlException;
    }
.end annotation


# static fields
.field public static final EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

.field public static final EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

.field private static final EGL_GL_COLORSPACE_BT2020_HLG_EXT:I = 0x3540

.field private static final EGL_GL_COLORSPACE_BT2020_PQ_EXT:I = 0x3340

.field private static final EGL_GL_COLORSPACE_KHR:I = 0x309d

.field private static final EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_HLG:[I

.field private static final EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ:[I

.field private static final EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

.field private static final EXTENSION_COLORSPACE_BT2020_HLG:Ljava/lang/String; = "EGL_EXT_gl_colorspace_bt2020_hlg"

.field private static final EXTENSION_COLORSPACE_BT2020_PQ:Ljava/lang/String; = "EGL_EXT_gl_colorspace_bt2020_pq"

.field private static final EXTENSION_PROTECTED_CONTENT:Ljava/lang/String; = "EGL_EXT_protected_content"

.field private static final EXTENSION_SURFACELESS_CONTEXT:Ljava/lang/String; = "EGL_KHR_surfaceless_context"

.field private static final EXTENSION_YUV_TARGET:Ljava/lang/String; = "GL_EXT_YUV_target"

.field private static final GL_FENCE_SYNC_FAILED:J = 0x0L

.field public static final HOMOGENEOUS_COORDINATE_VECTOR_SIZE:I = 0x4

.field public static final LENGTH_NDC:F = 2.0f


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xf

    new-array v1, v0, [I

    .line 66
    fill-array-data v1, :array_2a

    sput-object v1, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    new-array v0, v0, [I

    .line 77
    fill-array-data v0, :array_4c

    sput-object v0, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 104
    fill-array-data v1, :array_6e

    sput-object v1, Landroidx/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ:[I

    new-array v0, v0, [I

    .line 109
    fill-array-data v0, :array_7a

    sput-object v0, Landroidx/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_HLG:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 113
    sput-object v0, Landroidx/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    return-void

    :array_2a
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    :array_4c
    .array-data 4
        0x3040
        0x4
        0x3024
        0xa
        0x3023
        0xa
        0x3022
        0xa
        0x3021
        0x2
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    :array_6e
    .array-data 4
        0x309d
        0x3340
        0x3038
        0x3038
    .end array-data

    :array_7a
    .array-data 4
        0x309d
        0x3540
        0x3038
        0x3038
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertValidTextureSize(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xd33

    const/4 v3, 0x0

    .line 533
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v1, v1, v3

    if-lez v1, :cond_e

    goto :goto_f

    :cond_e
    move v0, v3

    :goto_f
    const-string v2, "Create a OpenGL context first or run the GL methods on an OpenGL thread."

    .line 535
    invoke-static {v0, v2}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    if-ltz p0, :cond_33

    if-ltz p1, :cond_33

    if-gt p0, v1, :cond_1d

    if-gt p1, v1, :cond_1d

    return-void

    .line 543
    :cond_1d
    new-instance p0, Landroidx/media3/common/util/GlUtil$GlException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "width or height is greater than GL_MAX_TEXTURE_SIZE "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/common/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 540
    :cond_33
    new-instance p0, Landroidx/media3/common/util/GlUtil$GlException;

    const-string/jumbo p1, "width or height is less than 0"

    invoke-direct {p0, p1}, Landroidx/media3/common/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static awaitSyncObject(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_a

    .line 483
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    goto :goto_13

    :cond_a
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 485
    invoke-static {p0, p1, v0, v1, v2}, Landroid/opengl/GLES30;->glWaitSync(JIJ)V

    .line 486
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    :goto_13
    return-void
.end method

.method public static bindTexture(III)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 734
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 735
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    const/16 p1, 0x2800

    .line 736
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 737
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    const/16 p1, 0x2801

    .line 738
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 739
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    const/16 p1, 0x2802

    const p2, 0x812f

    .line 740
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 741
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    const/16 p1, 0x2803

    .line 742
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 743
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method private static checkEglException(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 875
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_9

    return-void

    .line 877
    :cond_9
    new-instance v1, Landroidx/media3/common/util/GlUtil$GlException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", error code: 0x"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/media3/common/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static checkGlError()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 503
    :goto_6
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    if-eqz v2, :cond_37

    if-eqz v1, :cond_13

    const/16 v1, 0xa

    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    :cond_13
    invoke-static {v2}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "error code: 0x"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2c
    const-string v2, "glError: "

    .line 511
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_6

    :cond_37
    if-nez v1, :cond_3a

    return-void

    .line 515
    :cond_3a
    new-instance v1, Landroidx/media3/common/util/GlUtil$GlException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/media3/common/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static checkGlException(ZLjava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    if-eqz p0, :cond_3

    return-void

    .line 834
    :cond_3
    new-instance p0, Landroidx/media3/common/util/GlUtil$GlException;

    invoke-direct {p0, p1}, Landroidx/media3/common/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static clearFocusedBuffers()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 556
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 557
    invoke-static {v0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    const/16 v0, 0x4100

    .line 558
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 559
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public static create4x4IdentityMatrix()[F
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 141
    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    return-object v0
.end method

.method private static createBuffer(I)Ljava/nio/FloatBuffer;
    .registers 2

    mul-int/lit8 p0, p0, 0x4

    .line 625
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 626
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createBuffer([F)Ljava/nio/FloatBuffer;
    .registers 2

    .line 616
    array-length v0, p0

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->createBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public static createEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 285
    sget-object v0, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    .line 286
    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_15

    sget-object v0, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    .line 287
    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    move v0, v2

    goto :goto_16

    :cond_15
    :goto_15
    move v0, v1

    .line 285
    :goto_16
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const/4 v0, 0x3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_22

    if-ne p2, v0, :cond_20

    goto :goto_22

    :cond_20
    move v4, v2

    goto :goto_23

    :cond_22
    :goto_22
    move v4, v1

    .line 288
    :goto_23
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    new-array v0, v0, [I

    const/16 v4, 0x3098

    aput v4, v0, v2

    aput p2, v0, v1

    const/16 v1, 0x3038

    aput v1, v0, v3

    .line 293
    invoke-static {p1, p3}, Landroidx/media3/common/util/GlUtil;->getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    move-result-object p3

    .line 291
    invoke-static {p1, p3, p0, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p0

    if-eqz p0, :cond_40

    .line 304
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-object p0

    .line 298
    :cond_40
    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 299
    new-instance p0, Landroidx/media3/common/util/GlUtil$GlException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "eglCreateContext() failed to create a valid context. The device may not support EGL version "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/common/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createEglContext(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLContext;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 265
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v1, 0x2

    sget-object v2, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    invoke-static {v0, p0, v1, v2}, Landroidx/media3/common/util/GlUtil;->createEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method public static createEglSurface(Landroid/opengl/EGLDisplay;Ljava/lang/Object;IZ)Landroid/opengl/EGLSurface;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4f

    const/16 v0, 0xa

    if-ne p2, v0, :cond_8

    goto :goto_4f

    :cond_8
    const/4 v0, 0x7

    const/4 v1, 0x6

    if-eq p2, v0, :cond_24

    if-ne p2, v1, :cond_f

    goto :goto_24

    .line 354
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported color transfer: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 332
    :cond_24
    :goto_24
    sget-object v0, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    if-eqz p3, :cond_2b

    .line 340
    sget-object p2, Landroidx/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    goto :goto_53

    :cond_2b
    if-ne p2, v1, :cond_3e

    .line 342
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->isBt2020PqExtensionSupported()Z

    move-result p2

    if-eqz p2, :cond_36

    .line 346
    sget-object p2, Landroidx/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ:[I

    goto :goto_53

    .line 343
    :cond_36
    new-instance p0, Landroidx/media3/common/util/GlUtil$GlException;

    const-string p1, "BT.2020 PQ OpenGL output isn\'t supported."

    invoke-direct {p0, p1}, Landroidx/media3/common/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 348
    :cond_3e
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->isBt2020HlgExtensionSupported()Z

    move-result p2

    if-eqz p2, :cond_47

    .line 351
    sget-object p2, Landroidx/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_HLG:[I

    goto :goto_53

    .line 349
    :cond_47
    new-instance p0, Landroidx/media3/common/util/GlUtil$GlException;

    const-string p1, "BT.2020 HLG OpenGL output isn\'t supported."

    invoke-direct {p0, p1}, Landroidx/media3/common/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    :cond_4f
    :goto_4f
    sget-object v0, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    .line 330
    sget-object p2, Landroidx/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    .line 359
    :goto_53
    invoke-static {p0, v0}, Landroidx/media3/common/util/GlUtil;->getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    move-result-object p3

    const/4 v0, 0x0

    .line 357
    invoke-static {p0, p3, p1, p2, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p0

    const-string p1, "Error creating a new EGL surface"

    .line 363
    invoke-static {p1}, Landroidx/media3/common/util/GlUtil;->checkEglException(Ljava/lang/String;)V

    return-object p0
.end method

.method public static createExternalTexture()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 634
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->generateTexture()I

    move-result v0

    const v1, 0x8d65

    const/16 v2, 0x2601

    .line 635
    invoke-static {v1, v0, v2}, Landroidx/media3/common/util/GlUtil;->bindTexture(III)V

    return v0
.end method

.method public static createFboForTexture(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 753
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 754
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    aget v0, v1, v2

    const v3, 0x8d40

    .line 755
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 756
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    const v0, 0x8ce0

    const/16 v4, 0xde1

    .line 757
    invoke-static {v3, v0, v4, p0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 759
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    aget p0, v1, v2

    return p0
.end method

.method public static createFocusedPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLSurface;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 409
    sget-object v0, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    .line 411
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->isSurfacelessContextExtensionSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 412
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    goto :goto_10

    .line 413
    :cond_c
    invoke-static {p1, v2, v2, v0}, Landroidx/media3/common/util/GlUtil;->createPbufferSurface(Landroid/opengl/EGLDisplay;II[I)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 415
    :goto_10
    invoke-static {p1, p0, v0, v2, v2}, Landroidx/media3/common/util/GlUtil;->focusEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;II)V

    return-object v0
.end method

.method public static createGlSyncFence()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 445
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->getContextMajorVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    const v0, 0x9117

    const/4 v1, 0x0

    .line 446
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glFenceSync(II)J

    move-result-wide v0

    .line 447
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 452
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 453
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-wide v0

    :cond_1c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static createPbufferSurface(Landroid/opengl/EGLDisplay;II[I)Landroid/opengl/EGLSurface;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    const/16 v1, 0x3056

    aput v1, v0, p1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    const/16 p2, 0x3038

    aput p2, v0, p1

    .line 387
    invoke-static {p0, p3}, Landroidx/media3/common/util/GlUtil;->getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    move-result-object p1

    .line 385
    invoke-static {p0, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p0

    const-string p1, "Error creating a new EGL Pbuffer surface"

    .line 390
    invoke-static {p1}, Landroidx/media3/common/util/GlUtil;->checkEglException(Ljava/lang/String;)V

    return-object p0
.end method

.method public static createTexture(IIZ)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    if-eqz p2, :cond_c

    const p2, 0x881a

    const/16 v0, 0x140b

    .line 671
    invoke-static {p0, p1, p2, v0}, Landroidx/media3/common/util/GlUtil;->createTextureUninitialized(IIII)I

    move-result p0

    return p0

    :cond_c
    const/16 p2, 0x1908

    const/16 v0, 0x1401

    .line 673
    invoke-static {p0, p1, p2, v0}, Landroidx/media3/common/util/GlUtil;->createTextureUninitialized(IIII)I

    move-result p0

    return p0
.end method

.method public static createTexture(Landroid/graphics/Bitmap;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 647
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->generateTexture()I

    move-result v0

    .line 648
    invoke-static {v0, p0}, Landroidx/media3/common/util/GlUtil;->setTexture(ILandroid/graphics/Bitmap;)V

    return v0
.end method

.method private static createTextureUninitialized(IIII)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 688
    invoke-static {p0, p1}, Landroidx/media3/common/util/GlUtil;->assertValidTextureSize(II)V

    .line 689
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->generateTexture()I

    move-result v0

    const/16 v1, 0xde1

    const/16 v2, 0x2601

    .line 690
    invoke-static {v1, v0, v2}, Landroidx/media3/common/util/GlUtil;->bindTexture(III)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/4 v11, 0x0

    move v5, p2

    move v6, p0

    move v7, p1

    move v10, p3

    .line 691
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 701
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return v0
.end method

.method public static createVertexBuffer(Ljava/util/List;)[F
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)[F"
        }
    .end annotation

    .line 152
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    const/4 v2, 0x0

    move v3, v2

    .line 153
    :goto_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1c

    .line 155
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v5, v3, 0x4

    .line 154
    invoke-static {v4, v2, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1c
    return-object v0
.end method

.method public static deleteFbo(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 817
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 818
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public static deleteRbo(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 823
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 825
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public static deleteSyncObject(J)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 466
    invoke-static {p0, p1}, Landroidx/media3/common/util/GlUtil;->deleteSyncObjectQuietly(J)V

    .line 467
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public static deleteSyncObjectQuietly(J)V
    .registers 2

    .line 472
    invoke-static {p0, p1}, Landroid/opengl/GLES30;->glDeleteSync(J)V

    return-void
.end method

.method public static deleteTexture(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 769
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 770
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public static destroyEglContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 785
    :cond_3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p0, v0, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const-string v0, "Error releasing context"

    .line 787
    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->checkEglException(Ljava/lang/String;)V

    if-eqz p1, :cond_1b

    .line 789
    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    const-string p1, "Error destroying context"

    .line 790
    invoke-static {p1}, Landroidx/media3/common/util/GlUtil;->checkEglException(Ljava/lang/String;)V

    .line 792
    :cond_1b
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    const-string p1, "Error releasing thread"

    .line 793
    invoke-static {p1}, Landroidx/media3/common/util/GlUtil;->checkEglException(Ljava/lang/String;)V

    .line 794
    invoke-static {p0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    const-string p0, "Error terminating display"

    .line 795
    invoke-static {p0}, Landroidx/media3/common/util/GlUtil;->checkEglException(Ljava/lang/String;)V

    return-void
.end method

.method public static destroyEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    if-eqz p0, :cond_18

    if-nez p1, :cond_5

    goto :goto_18

    :cond_5
    const/16 v0, 0x3059

    .line 807
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_10

    return-void

    .line 811
    :cond_10
    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    const-string p0, "Error destroying surface"

    .line 812
    invoke-static {p0}, Landroidx/media3/common/util/GlUtil;->checkEglException(Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public static focusEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 569
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/GlUtil;->focusRenderTarget(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;III)V

    return-void
.end method

.method public static focusFramebuffer(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 584
    invoke-static/range {p0 .. p5}, Landroidx/media3/common/util/GlUtil;->focusRenderTarget(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;III)V

    return-void
.end method

.method public static focusFramebufferUsingCurrentContext(III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x8ca6

    const/4 v2, 0x0

    .line 601
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v0, v0, v2

    if-eq v0, p0, :cond_14

    const v0, 0x8d40

    .line 603
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 605
    :cond_14
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 606
    invoke-static {v2, v2, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 607
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method private static focusRenderTarget(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 869
    invoke-static {p0, p2, p2, p1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const-string p0, "Error making context current"

    .line 870
    invoke-static {p0}, Landroidx/media3/common/util/GlUtil;->checkEglException(Ljava/lang/String;)V

    .line 871
    invoke-static {p3, p4, p5}, Landroidx/media3/common/util/GlUtil;->focusFramebufferUsingCurrentContext(III)V

    return-void
.end method

.method public static generateTexture()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 708
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 709
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    aget v0, v1, v2

    return v0
.end method

.method public static getContextMajorVersion()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 428
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    .line 429
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v3

    const/16 v4, 0x3098

    .line 427
    invoke-static {v2, v3, v4, v0, v1}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 433
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getCurrentContext()Landroid/opengl/EGLContext;
    .registers 1

    .line 492
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultEglDisplay()Landroid/opengl/EGLDisplay;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 242
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 243
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "No EGL display."

    invoke-static {v2, v4}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    new-array v2, v3, [I

    new-array v3, v3, [I

    .line 245
    invoke-static {v1, v2, v0, v3, v0}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    const-string v2, "Error in eglInitialize."

    .line 244
    invoke-static {v0, v2}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 252
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-object v1
.end method

.method private static getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v9, v0, [Landroid/opengl/EGLConfig;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v7, v0, [I

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v9

    .line 841
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x0

    aget-object p0, v9, p0

    return-object p0

    .line 850
    :cond_16
    new-instance p0, Landroidx/media3/common/util/GlUtil$GlException;

    const-string p1, "eglChooseConfig failed."

    invoke-direct {p0, p1}, Landroidx/media3/common/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getNormalizedCoordinateBounds()[F
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 120
    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getTextureCoordinateBounds()[F
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 130
    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static isBt2020HlgExtensionSupported()Z
    .registers 1

    const-string v0, "EGL_EXT_gl_colorspace_bt2020_hlg"

    .line 237
    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->isExtensionSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBt2020PqExtensionSupported()Z
    .registers 2

    .line 232
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_10

    const-string v0, "EGL_EXT_gl_colorspace_bt2020_pq"

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->isExtensionSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static isExtensionSupported(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 856
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/16 v2, 0x3055

    .line 857
    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 858
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public static isProtectedContentExtensionSupported(Landroid/content/Context;)Z
    .registers 5

    .line 170
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    return v2

    .line 173
    :cond_8
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_23

    const-string v0, "samsung"

    sget-object v3, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "XT1650"

    sget-object v3, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    return v2

    .line 180
    :cond_23
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-ge v0, v1, :cond_34

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.vr.high_performance"

    .line 183
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_34

    return v2

    :cond_34
    const-string p0, "EGL_EXT_protected_content"

    .line 188
    invoke-static {p0}, Landroidx/media3/common/util/GlUtil;->isExtensionSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSurfacelessContextExtensionSupported()Z
    .registers 1

    const-string v0, "EGL_KHR_surfaceless_context"

    .line 199
    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->isExtensionSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isYuvTargetExtensionSupported()Z
    .registers 4

    .line 210
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1f03

    if-eqz v0, :cond_23

    .line 213
    :try_start_f
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->getDefaultEglDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 214
    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->createEglContext(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLContext;

    move-result-object v3

    .line 215
    invoke-static {v3, v0}, Landroidx/media3/common/util/GlUtil;->createFocusedPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLSurface;

    .line 216
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {v0, v3}, Landroidx/media3/common/util/GlUtil;->destroyEglContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V
    :try_end_21
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_f .. :try_end_21} :catch_22

    goto :goto_27

    :catch_22
    return v1

    .line 222
    :cond_23
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    :goto_27
    if-eqz v2, :cond_32

    const-string v0, "GL_EXT_YUV_target"

    .line 225
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v1, 0x1

    :cond_32
    return v1
.end method

.method public static setTexture(ILandroid/graphics/Bitmap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 715
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/GlUtil;->assertValidTextureSize(II)V

    const/16 v0, 0x2601

    const/16 v1, 0xde1

    .line 716
    invoke-static {v1, p0, v0}, Landroidx/media3/common/util/GlUtil;->bindTexture(III)V

    const/4 p0, 0x0

    .line 717
    invoke-static {v1, p0, p1, p0}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 718
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public static setToIdentity([F)V
    .registers 2

    const/4 v0, 0x0

    .line 147
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method
