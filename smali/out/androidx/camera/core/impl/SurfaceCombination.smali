.class public final Landroidx/camera/core/impl/SurfaceCombination;
.super Ljava/lang/Object;
.source "SurfaceCombination.java"


# instance fields
.field private final mSurfaceConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    return-void
.end method

.method private static generateArrangements(Ljava/util/List;I[II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;I[II)V"
        }
    .end annotation

    .line 45
    array-length v0, p2

    if-lt p3, v0, :cond_d

    .line 46
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_d
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, p1, :cond_2a

    move v2, v0

    :goto_12
    if-ge v2, p3, :cond_1d

    .line 54
    aget v3, p2, v2

    if-ne v1, v3, :cond_1a

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1d
    move v2, v0

    :goto_1e
    if-nez v2, :cond_27

    .line 61
    aput v1, p2, p3

    add-int/lit8 v2, p3, 0x1

    .line 62
    invoke-static {p0, p1, p2, v2}, Landroidx/camera/core/impl/SurfaceCombination;->generateArrangements(Ljava/util/List;I[II)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2a
    return-void
.end method

.method private getElementsArrangements(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-array v1, p1, [I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->generateArrangements(Ljava/util/List;I[II)V

    return-object v0
.end method


# virtual methods
.method public addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z
    .registers 3

    .line 69
    iget-object v0, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getOrderedSupportedSurfaceConfigList(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 103
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1a

    return-object v2

    .line 107
    :cond_1a
    iget-object v0, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/camera/core/impl/SurfaceCombination;->getElementsArrangements(I)Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/camera/core/impl/SurfaceConfig;

    .line 110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v5, 0x1

    move v6, v5

    .line 113
    :goto_3d
    iget-object v7, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_74

    .line 114
    aget v7, v3, v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_71

    .line 115
    iget-object v7, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    .line 117
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/core/impl/SurfaceConfig;

    aget v8, v3, v4

    .line 118
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/core/impl/SurfaceConfig;

    invoke-virtual {v7, v8}, Landroidx/camera/core/impl/SurfaceConfig;->isSupported(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-result v7

    and-int/2addr v6, v7

    if-nez v6, :cond_65

    goto :goto_74

    .line 123
    :cond_65
    aget v7, v3, v4

    iget-object v8, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    .line 124
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/core/impl/SurfaceConfig;

    aput-object v8, v1, v7

    :cond_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_74
    :goto_74
    if-eqz v6, :cond_2e

    move v4, v5

    :cond_77
    if-eqz v4, :cond_7d

    .line 135
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_7d
    return-object v2
.end method

.method public getSurfaceConfigList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    return-object v0
.end method

.method public removeSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z
    .registers 3

    .line 74
    iget-object v0, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
