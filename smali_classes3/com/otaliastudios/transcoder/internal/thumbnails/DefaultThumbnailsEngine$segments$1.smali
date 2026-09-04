.class final synthetic Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$segments$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "DefaultThumbnailsEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;-><init>(Lcom/otaliastudios/transcoder/internal/DataSources;ILcom/otaliastudios/transcoder/resize/Resizer;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function4<",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "Ljava/lang/Integer;",
        "Lcom/otaliastudios/transcoder/common/TrackStatus;",
        "Landroid/media/MediaFormat;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x4

    const-class v3, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;

    const-string v4, "createPipeline"

    const-string v5, "createPipeline(Lcom/otaliastudios/transcoder/common/TrackType;ILcom/otaliastudios/transcoder/common/TrackStatus;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/otaliastudios/transcoder/common/TrackType;ILcom/otaliastudios/transcoder/common/TrackStatus;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p3"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$segments$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->access$createPipeline(Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;Lcom/otaliastudios/transcoder/common/TrackType;ILcom/otaliastudios/transcoder/common/TrackStatus;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, Lcom/otaliastudios/transcoder/common/TrackType;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Lcom/otaliastudios/transcoder/common/TrackStatus;

    check-cast p4, Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$segments$1;->invoke(Lcom/otaliastudios/transcoder/common/TrackType;ILcom/otaliastudios/transcoder/common/TrackStatus;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object p1

    return-object p1
.end method
