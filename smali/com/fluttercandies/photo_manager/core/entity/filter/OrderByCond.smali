.class public final Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;
.super Ljava/lang/Object;
.source "CommonFilterOption.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0006\u0010\u0010\u001a\u00020\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;",
        "",
        "key",
        "",
        "asc",
        "",
        "(Ljava/lang/String;Z)V",
        "getAsc",
        "()Z",
        "getKey",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "getOrder",
        "hashCode",
        "",
        "toString",
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
.field private final asc:Z

.field private final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->key:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->asc:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->key:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-boolean p2, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->asc:Z

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->copy(Ljava/lang/String;Z)Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->asc:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Z)Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;

    invoke-direct {v0, p1, p2}, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->key:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->asc:Z

    iget-boolean p1, p1, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->asc:Z

    if-eq v1, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getAsc()Z
    .registers 2

    .line 228
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->asc:Z

    return v0
.end method

.method public final getKey()Ljava/lang/String;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrder()Ljava/lang/String;
    .registers 4

    .line 231
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->asc:Z

    if-eqz v0, :cond_7

    const-string v0, "asc"

    goto :goto_9

    :cond_7
    const-string v0, "desc"

    .line 236
    :goto_9
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->key:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->asc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->key:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->asc:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OrderByCond(key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", asc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
