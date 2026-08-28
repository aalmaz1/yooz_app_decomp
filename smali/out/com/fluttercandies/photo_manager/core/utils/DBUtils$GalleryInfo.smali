.class final Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;
.super Ljava/lang/Object;
.source "DBUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fluttercandies/photo_manager/core/utils/DBUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GalleryInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;",
        "",
        "path",
        "",
        "galleryId",
        "galleryName",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getGalleryId",
        "()Ljava/lang/String;",
        "getGalleryName",
        "getPath",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
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
.field private final galleryId:Ljava/lang/String;

.field private final galleryName:Ljava/lang/String;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "galleryId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "galleryName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryId:Ljava/lang/String;

    iput-object p3, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->path:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryId:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryName:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;
    .registers 5

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "galleryId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "galleryName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->path:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryId:Ljava/lang/String;

    iget-object v3, p1, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryName:Ljava/lang/String;

    iget-object p1, p1, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryName:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getGalleryId()Ljava/lang/String;
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryId:Ljava/lang/String;

    return-object v0
.end method

.method public final getGalleryName()Ljava/lang/String;
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryId:Ljava/lang/String;

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->galleryName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GalleryInfo(path="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", galleryId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", galleryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
