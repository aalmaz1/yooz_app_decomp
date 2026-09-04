.class final Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$sink$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultTranscodeEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->createPipeline(Lcom/otaliastudios/transcoder/common/TrackType;ILcom/otaliastudios/transcoder/common/TrackStatus;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$sink$1;->$index:I

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$sink$1;->$sources:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 2

    .line 77
    iget v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$sink$1;->$index:I

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$sink$1;->$sources:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$sink$1;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
