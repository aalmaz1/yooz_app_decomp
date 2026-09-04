.class public final Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;
.super Ljava/lang/Object;
.source "CommonFilterOption.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SizeConstraint"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;",
        "",
        "()V",
        "ignoreSize",
        "",
        "getIgnoreSize",
        "()Z",
        "setIgnoreSize",
        "(Z)V",
        "maxHeight",
        "",
        "getMaxHeight",
        "()I",
        "setMaxHeight",
        "(I)V",
        "maxWidth",
        "getMaxWidth",
        "setMaxWidth",
        "minHeight",
        "getMinHeight",
        "setMinHeight",
        "minWidth",
        "getMinWidth",
        "setMinWidth",
        "photo_manager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private ignoreSize:Z

.field private maxHeight:I

.field private maxWidth:I

.field private minHeight:I

.field private minWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIgnoreSize()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;->ignoreSize:Z

    return v0
.end method

.method public final getMaxHeight()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;->maxHeight:I

    return v0
.end method

.method public final getMaxWidth()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;->maxWidth:I

    return v0
.end method

.method public final getMinHeight()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;->minHeight:I

    return v0
.end method

.method public final getMinWidth()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;->minWidth:I

    return v0
.end method

.method public final setIgnoreSize(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;->ignoreSize:Z

    return-void
.end method

.method public final setMaxHeight(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;->maxHeight:I

    return-void
.end method

.method public final setMaxWidth(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;->maxWidth:I

    return-void
.end method

.method public final setMinHeight(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;->minHeight:I

    return-void
.end method

.method public final setMinWidth(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;->minWidth:I

    return-void
.end method
