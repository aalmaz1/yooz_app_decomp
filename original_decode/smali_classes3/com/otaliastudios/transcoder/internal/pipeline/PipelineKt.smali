.class public final Lcom/otaliastudios/transcoder/internal/pipeline/PipelineKt;
.super Ljava/lang/Object;
.source "Pipeline.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001ay\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0008\u0008\u0000\u0010\u0004*\u00020\u0005\"\u0008\u0008\u0001\u0010\u0006*\u00020\u0007\"\u0008\u0008\u0002\u0010\u0002*\u00020\u0005\"\u0008\u0008\u0003\u0010\u0003*\u00020\u0007*\u001a\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00060\u00082\u001e\u0010\n\u001a\u001a\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0008H\u0080\u0002*<\u0008\u0002\u0010\u000b\"\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070\u00082\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "plus",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;",
        "NewData",
        "NewChannel",
        "CurrData",
        "",
        "CurrChannel",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step;",
        "",
        "other",
        "AnyStep",
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
.method public static final plus(Lcom/otaliastudios/transcoder/internal/pipeline/Step;Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CurrData:",
            "Ljava/lang/Object;",
            "CurrChannel::",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            "NewData:",
            "Ljava/lang/Object;",
            "NewChannel::",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
            "Lkotlin/Unit;",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            "TCurrData;TCurrChannel;>;",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
            "TCurrData;TCurrChannel;TNewData;TNewChannel;>;)",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder<",
            "TNewData;TNewChannel;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p1}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;->plus(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object p0

    return-object p0
.end method
