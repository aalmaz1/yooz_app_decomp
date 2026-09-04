.class public final Lcom/otaliastudios/opengl/core/EglContextFactory;
.super Ljava/lang/Object;
.source "EglContextFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/core/EglContextFactory$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002R\u0016\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002R\u0016\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/core/EglContextFactory;",
        "",
        "()V",
        "GLES2",
        "Landroid/opengl/GLSurfaceView$EGLContextFactory;",
        "getGLES2$annotations",
        "GLES3",
        "getGLES3$annotations",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "Factory",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final GLES2:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field public static final GLES3:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field public static final INSTANCE:Lcom/otaliastudios/opengl/core/EglContextFactory;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/core/EglContextFactory;

    invoke-direct {v0}, Lcom/otaliastudios/opengl/core/EglContextFactory;-><init>()V

    sput-object v0, Lcom/otaliastudios/opengl/core/EglContextFactory;->INSTANCE:Lcom/otaliastudios/opengl/core/EglContextFactory;

    const-string v0, "EglContextFactory"

    .line 16
    sput-object v0, Lcom/otaliastudios/opengl/core/EglContextFactory;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/otaliastudios/opengl/core/EglContextFactory$Factory;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/core/EglContextFactory$Factory;-><init>(I)V

    check-cast v0, Landroid/opengl/GLSurfaceView$EGLContextFactory;

    sput-object v0, Lcom/otaliastudios/opengl/core/EglContextFactory;->GLES2:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 24
    new-instance v0, Lcom/otaliastudios/opengl/core/EglContextFactory$Factory;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/core/EglContextFactory$Factory;-><init>(I)V

    check-cast v0, Landroid/opengl/GLSurfaceView$EGLContextFactory;

    sput-object v0, Lcom/otaliastudios/opengl/core/EglContextFactory;->GLES3:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/otaliastudios/opengl/core/EglContextFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic getGLES2$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getGLES3$annotations()V
    .locals 0

    return-void
.end method
