.class public final Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;
.super Ljava/lang/Object;
.source "Pipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "C::",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u00020\u0002B\'\u0008\u0000\u0012\u001e\u0008\u0002\u0010\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00070\u0006\u00a2\u0006\u0002\u0010\u0008JI\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u000c\u0012\u0004\u0012\u0002H\r0\u0000\"\u0008\u0008\u0002\u0010\u000c*\u00020\u0002\"\u0008\u0008\u0003\u0010\r*\u00020\u00042\u001e\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002H\u000c\u0012\u0004\u0012\u0002H\r0\u0007H\u0086\u0002R*\u0010\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00070\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;",
        "D",
        "",
        "C",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "steps",
        "",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step;",
        "(Ljava/util/List;)V",
        "getSteps$lib_release",
        "()Ljava/util/List;",
        "plus",
        "NewData",
        "NewChannel",
        "step",
        "lib_release"
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
.field private final steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
            "****>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
            "****>;>;)V"
        }
    .end annotation

    const-string v0, "steps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;->steps:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    .line 67
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 66
    :cond_8
    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getSteps$lib_release()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
            "****>;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;->steps:Ljava/util/List;

    return-object v0
.end method

.method public final plus(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewData:",
            "Ljava/lang/Object;",
            "NewChannel::",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
            "TD;TC;TNewData;TNewChannel;>;)",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder<",
            "TNewData;TNewChannel;>;"
        }
    .end annotation

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;->steps:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;-><init>(Ljava/util/List;)V

    return-object v0
.end method
