.class public final Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;
.super Ljava/lang/Object;
.source "CmcdData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bufferStarvation:Z

.field private customDataList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maximumRequestedThroughputKbps:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x7fffffff

    .line 987
    iput v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->maximumRequestedThroughputKbps:I

    .line 988
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->customDataList:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method static synthetic access$2300(Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;)I
    .registers 1

    .line 980
    iget p0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->maximumRequestedThroughputKbps:I

    return p0
.end method

.method static synthetic access$2400(Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;)Z
    .registers 1

    .line 980
    iget-boolean p0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->bufferStarvation:Z

    return p0
.end method

.method static synthetic access$2500(Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;)Lcom/google/common/collect/ImmutableList;
    .registers 1

    .line 980
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->customDataList:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;
    .registers 3

    .line 1027
    new-instance v0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;-><init>(Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;Landroidx/media3/exoplayer/upstream/CmcdData$1;)V

    return-object v0
.end method

.method public setBufferStarvation(Z)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;
    .registers 2

    .line 1015
    iput-boolean p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->bufferStarvation:Z

    return-object p0
.end method

.method public setCustomDataList(Ljava/util/List;)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;"
        }
    .end annotation

    .line 1022
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->customDataList:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setMaximumRequestedThroughputKbps(I)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;
    .registers 4

    const v0, -0x7fffffff

    if-gez p1, :cond_a

    if-ne p1, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v1, 0x1

    .line 1000
    :goto_b
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    if-ne p1, v0, :cond_11

    goto :goto_17

    :cond_11
    add-int/lit8 p1, p1, 0x32

    .line 1007
    div-int/lit8 p1, p1, 0x64

    mul-int/lit8 p1, p1, 0x64

    :goto_17
    iput p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->maximumRequestedThroughputKbps:I

    return-object p0
.end method
