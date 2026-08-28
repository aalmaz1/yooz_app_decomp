.class public final Lcom/otaliastudios/transcoder/internal/pipeline/StepKt;
.super Ljava/lang/Object;
.source "Step.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"*\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0012\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "name",
        "",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step;",
        "getName",
        "(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Ljava/lang/String;",
        "lib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getName(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
            "****>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
