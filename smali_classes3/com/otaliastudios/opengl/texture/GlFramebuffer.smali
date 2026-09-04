.class public final Lcom/otaliastudios/opengl/texture/GlFramebuffer;
.super Ljava/lang/Object;
.source "GlFramebuffer.kt"

# interfaces
.implements Lcom/otaliastudios/opengl/core/GlBindable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlFramebuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlFramebuffer.kt\ncom/otaliastudios/opengl/texture/GlFramebuffer\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,43:1\n55#2:44\n114#2,3:45\n56#2,2:48\n117#2,4:50\n61#2:54\n61#2:55\n58#2:56\n114#2,3:57\n59#2,2:60\n117#2,4:62\n*S KotlinDebug\n*F\n+ 1 GlFramebuffer.kt\ncom/otaliastudios/opengl/texture/GlFramebuffer\n*L\n15#1:44\n15#1:45,3\n15#1:48,2\n15#1:50,4\n33#1:54\n37#1:55\n41#1:56\n41#1:57,3\n41#1:60,2\n41#1:62,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003H\u0007J\u0008\u0010\u000c\u001a\u00020\u0008H\u0016J\u0006\u0010\r\u001a\u00020\u0008J\u0008\u0010\u000e\u001a\u00020\u0008H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/texture/GlFramebuffer;",
        "Lcom/otaliastudios/opengl/core/GlBindable;",
        "id",
        "",
        "(Ljava/lang/Integer;)V",
        "getId",
        "()I",
        "attach",
        "",
        "texture",
        "Lcom/otaliastudios/opengl/texture/GlTexture;",
        "attachment",
        "bind",
        "release",
        "unbind",
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


# instance fields
.field private final id:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/otaliastudios/opengl/texture/GlFramebuffer;-><init>(Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 6

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    .line 13
    move-object p1, p0

    check-cast p1, Lcom/otaliastudios/opengl/texture/GlFramebuffer;

    const/4 p1, 0x1

    .line 14
    invoke-static {p1}, Lkotlin/UIntArray;->constructor-impl(I)[I

    move-result-object v0

    .line 46
    invoke-static {v0}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-static {v0, v4}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p1, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 49
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    aget p1, v2, v3

    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p1

    invoke-static {v0, v3, p1}, Lkotlin/UIntArray;->set-VXSXFK8([III)V

    const-string p1, "glGenFramebuffers"

    .line 16
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 17
    invoke-static {v0, v3}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result p1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/otaliastudios/opengl/texture/GlFramebuffer;->id:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/otaliastudios/opengl/texture/GlFramebuffer;-><init>(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic attach$default(Lcom/otaliastudios/opengl/texture/GlFramebuffer;Lcom/otaliastudios/opengl/texture/GlTexture;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 21
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_COLOR_ATTACHMENT0()I

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/opengl/texture/GlFramebuffer;->attach(Lcom/otaliastudios/opengl/texture/GlTexture;I)V

    return-void
.end method


# virtual methods
.method public final attach(Lcom/otaliastudios/opengl/texture/GlTexture;)V
    .locals 3

    const-string v0, "texture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/otaliastudios/opengl/texture/GlFramebuffer;->attach$default(Lcom/otaliastudios/opengl/texture/GlFramebuffer;Lcom/otaliastudios/opengl/texture/GlTexture;IILjava/lang/Object;)V

    return-void
.end method

.method public final attach(Lcom/otaliastudios/opengl/texture/GlTexture;I)V
    .locals 2

    const-string v0, "texture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/opengl/core/GlBindable;

    new-instance v1, Lcom/otaliastudios/opengl/texture/GlFramebuffer$attach$1;

    invoke-direct {v1, p2, p1}, Lcom/otaliastudios/opengl/texture/GlFramebuffer$attach$1;-><init>(ILcom/otaliastudios/opengl/texture/GlTexture;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/otaliastudios/opengl/core/GlBindableKt;->use(Lcom/otaliastudios/opengl/core/GlBindable;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bind()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_FRAMEBUFFER()I

    move-result v0

    iget v1, p0, Lcom/otaliastudios/opengl/texture/GlFramebuffer;->id:I

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    .line 54
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public final getId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/otaliastudios/opengl/texture/GlFramebuffer;->id:I

    return v0
.end method

.method public final release()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 41
    iget v2, p0, Lcom/otaliastudios/opengl/texture/GlFramebuffer;->id:I

    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 58
    invoke-static {v1}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result v2

    new-array v4, v2, [I

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_0

    invoke-static {v1, v5}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {v0, v4, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 61
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 63
    aget v0, v4, v3

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {v1, v3, v0}, Lkotlin/UIntArray;->set-VXSXFK8([III)V

    return-void
.end method

.method public unbind()V
    .locals 2

    .line 37
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_FRAMEBUFFER()I

    move-result v0

    const/4 v1, 0x0

    .line 55
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method
