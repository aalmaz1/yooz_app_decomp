.class public final Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;
.super Ljava/lang/Object;
.source "VideoUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fluttercandies/photo_manager/core/utils/VideoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0008J2\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u0008\"\u0004\u0008\u000f\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;",
        "",
        "width",
        "",
        "height",
        "duration",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "getDuration",
        "()Ljava/lang/Integer;",
        "setDuration",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getHeight",
        "setHeight",
        "getWidth",
        "setWidth",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private duration:Ljava/lang/Integer;

.field private height:Ljava/lang/Integer;

.field private width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->width:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->height:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->duration:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->width:Ljava/lang/Integer;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->height:Ljava/lang/Integer;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->duration:Ljava/lang/Integer;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->copy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->duration:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;
    .registers 5

    new-instance v0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->width:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->width:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->height:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->height:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->duration:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->duration:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getDuration()Ljava/lang/Integer;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->duration:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->width:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->height:Ljava/lang/Integer;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->duration:Ljava/lang/Integer;

    if-nez v2, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_23
    add-int/2addr v0, v1

    return v0
.end method

.method public final setDuration(Ljava/lang/Integer;)V
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->duration:Ljava/lang/Integer;

    return-void
.end method

.method public final setHeight(Ljava/lang/Integer;)V
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->height:Ljava/lang/Integer;

    return-void
.end method

.method public final setWidth(Ljava/lang/Integer;)V
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->width:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->width:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->height:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->duration:Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VideoInfo(width="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", height="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
