.class public final Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$DurationConstraint;
.super Ljava/lang/Object;
.source "CommonFilterOption.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DurationConstraint"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$DurationConstraint;",
        "",
        "()V",
        "allowNullable",
        "",
        "getAllowNullable",
        "()Z",
        "setAllowNullable",
        "(Z)V",
        "max",
        "",
        "getMax",
        "()J",
        "setMax",
        "(J)V",
        "min",
        "getMin",
        "setMin",
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
.field private allowNullable:Z

.field private max:J

.field private min:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAllowNullable()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$DurationConstraint;->allowNullable:Z

    return v0
.end method

.method public final getMax()J
    .locals 2

    .line 218
    iget-wide v0, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$DurationConstraint;->max:J

    return-wide v0
.end method

.method public final getMin()J
    .locals 2

    .line 217
    iget-wide v0, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$DurationConstraint;->min:J

    return-wide v0
.end method

.method public final setAllowNullable(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$DurationConstraint;->allowNullable:Z

    return-void
.end method

.method public final setMax(J)V
    .locals 0

    .line 218
    iput-wide p1, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$DurationConstraint;->max:J

    return-void
.end method

.method public final setMin(J)V
    .locals 0

    .line 217
    iput-wide p1, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$DurationConstraint;->min:J

    return-void
.end method
