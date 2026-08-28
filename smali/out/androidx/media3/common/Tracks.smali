.class public final Landroidx/media3/common/Tracks;
.super Ljava/lang/Object;
.source "Tracks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/Tracks$Group;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroidx/media3/common/Tracks;

.field private static final FIELD_TRACK_GROUPS:Ljava/lang/String;


# instance fields
.field private final groups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Tracks$Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 262
    new-instance v0, Landroidx/media3/common/Tracks;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    sput-object v0, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    const/4 v0, 0x0

    .line 374
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Tracks;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Tracks$Group;",
            ">;)V"
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Tracks;
    .registers 2

    .line 386
    sget-object v0, Landroidx/media3/common/Tracks;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_d

    .line 389
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_16

    .line 390
    :cond_d
    new-instance v0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 391
    :goto_16
    new-instance v0, Landroidx/media3/common/Tracks;

    invoke-direct {v0, p0}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public containsType(I)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 288
    :goto_2
    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 289
    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v2}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v2

    if-ne v2, p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 365
    :cond_11
    check-cast p1, Landroidx/media3/common/Tracks;

    .line 366
    iget-object v0, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public getGroups()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Tracks$Group;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 371
    iget-object v0, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 283
    iget-object v0, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isTypeSelected(I)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 348
    :goto_2
    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 349
    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Tracks$Group;

    .line 350
    invoke-virtual {v2}, Landroidx/media3/common/Tracks$Group;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v2

    if-ne v2, p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    return v0
.end method

.method public isTypeSupported(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 301
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/Tracks;->isTypeSupported(IZ)Z

    move-result p1

    return p1
.end method

.method public isTypeSupported(IZ)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 316
    :goto_2
    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 317
    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v2}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v2

    if-ne v2, p1, :cond_28

    .line 318
    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v2, p2}, Landroidx/media3/common/Tracks$Group;->isSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2b
    return v0
.end method

.method public isTypeSupportedOrEmpty(I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/Tracks;->isTypeSupportedOrEmpty(IZ)Z

    move-result p1

    return p1
.end method

.method public isTypeSupportedOrEmpty(IZ)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    invoke-virtual {p0, p1}, Landroidx/media3/common/Tracks;->containsType(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/Tracks;->isTypeSupported(IZ)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 5

    .line 378
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 379
    sget-object v1, Landroidx/media3/common/Tracks;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    new-instance v3, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v3}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleArrayList(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
