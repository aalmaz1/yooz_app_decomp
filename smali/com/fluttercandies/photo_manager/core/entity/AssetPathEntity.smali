.class public final Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;
.super Ljava/lang/Object;
.source "AssetPathEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u001e\u0008\u0086\u0008\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0006H\u00c6\u0003J\t\u0010 \u001a\u00020\u0006H\u00c6\u0003J\t\u0010!\u001a\u00020\tH\u00c6\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017JL\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020\t2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020\u0006H\u00d6\u0001J\t\u0010(\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u000e\u00a8\u0006)"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;",
        "",
        "id",
        "",
        "name",
        "assetCount",
        "",
        "typeInt",
        "isAll",
        "",
        "modifiedDate",
        "",
        "(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;)V",
        "getAssetCount",
        "()I",
        "setAssetCount",
        "(I)V",
        "getId",
        "()Ljava/lang/String;",
        "()Z",
        "setAll",
        "(Z)V",
        "getModifiedDate",
        "()Ljava/lang/Long;",
        "setModifiedDate",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getName",
        "getTypeInt",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;)Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;",
        "equals",
        "other",
        "hashCode",
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
.field private assetCount:I

.field private final id:Ljava/lang/String;

.field private isAll:Z

.field private modifiedDate:Ljava/lang/Long;

.field private final name:Ljava/lang/String;

.field private final typeInt:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;)V
    .registers 8

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->id:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->name:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->assetCount:I

    .line 7
    iput p4, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->typeInt:I

    .line 8
    iput-boolean p5, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->isAll:Z

    .line 9
    iput-object p6, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->modifiedDate:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_5

    const/4 p5, 0x0

    :cond_5
    move v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_b

    const/4 p6, 0x0

    :cond_b
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;-><init>(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;ILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->id:Ljava/lang/String;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->name:Ljava/lang/String;

    :cond_c
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->assetCount:I

    :cond_13
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->typeInt:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget-boolean p5, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->isAll:Z

    :cond_21
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->modifiedDate:Ljava/lang/Long;

    :cond_28
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->copy(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;)Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->assetCount:I

    return v0
.end method

.method public final component4()I
    .registers 2

    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->typeInt:I

    return v0
.end method

.method public final component5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->isAll:Z

    return v0
.end method

.method public final component6()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->modifiedDate:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;)Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;
    .registers 15

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;-><init>(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->assetCount:I

    iget v3, p1, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->assetCount:I

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->typeInt:I

    iget v3, p1, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->typeInt:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-boolean v1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->isAll:Z

    iget-boolean v3, p1, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->isAll:Z

    if-eq v1, v3, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->modifiedDate:Ljava/lang/Long;

    iget-object p1, p1, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->modifiedDate:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    return v2

    :cond_42
    return v0
.end method

.method public final getAssetCount()I
    .registers 2

    .line 6
    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->assetCount:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getModifiedDate()Ljava/lang/Long;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->modifiedDate:Ljava/lang/Long;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeInt()I
    .registers 2

    .line 7
    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->typeInt:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->assetCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->typeInt:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->isAll:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->modifiedDate:Ljava/lang/Long;

    if-nez v1, :cond_32

    const/4 v1, 0x0

    goto :goto_36

    :cond_32
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_36
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAll()Z
    .registers 2

    .line 8
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->isAll:Z

    return v0
.end method

.method public final setAll(Z)V
    .registers 2

    .line 8
    iput-boolean p1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->isAll:Z

    return-void
.end method

.method public final setAssetCount(I)V
    .registers 2

    .line 6
    iput p1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->assetCount:I

    return-void
.end method

.method public final setModifiedDate(Ljava/lang/Long;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->modifiedDate:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->name:Ljava/lang/String;

    iget v2, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->assetCount:I

    iget v3, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->typeInt:I

    iget-boolean v4, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->isAll:Z

    iget-object v5, p0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->modifiedDate:Ljava/lang/Long;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AssetPathEntity(id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", name="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", assetCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typeInt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifiedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
