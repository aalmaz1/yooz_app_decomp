.class public final Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;
.super Ljava/lang/Object;
.source "ThumbLoadOption.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\tH\u00c6\u0003J;\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;",
        "",
        "width",
        "",
        "height",
        "format",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "quality",
        "frame",
        "",
        "(IILandroid/graphics/Bitmap$CompressFormat;IJ)V",
        "getFormat",
        "()Landroid/graphics/Bitmap$CompressFormat;",
        "getFrame",
        "()J",
        "getHeight",
        "()I",
        "getQuality",
        "getWidth",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "Factory",
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


# static fields
.field public static final Factory:Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption$Factory;


# instance fields
.field private final format:Landroid/graphics/Bitmap$CompressFormat;

.field private final frame:J

.field private final height:I

.field private final quality:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->Factory:Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption$Factory;

    return-void
.end method

.method public constructor <init>(IILandroid/graphics/Bitmap$CompressFormat;IJ)V
    .locals 1

    const-string v0, "format"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->width:I

    .line 7
    iput p2, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->height:I

    .line 8
    iput-object p3, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->format:Landroid/graphics/Bitmap$CompressFormat;

    .line 9
    iput p4, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->quality:I

    .line 10
    iput-wide p5, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->frame:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;IILandroid/graphics/Bitmap$CompressFormat;IJILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->width:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->height:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->format:Landroid/graphics/Bitmap$CompressFormat;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->quality:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-wide p5, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->frame:J

    :cond_4
    move-wide v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p8

    move-object p5, v0

    move p6, v1

    move-wide p7, v2

    invoke-virtual/range {p2 .. p8}, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->copy(IILandroid/graphics/Bitmap$CompressFormat;IJ)Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->width:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->height:I

    return v0
.end method

.method public final component3()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->format:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->quality:I

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->frame:J

    return-wide v0
.end method

.method public final copy(IILandroid/graphics/Bitmap$CompressFormat;IJ)Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;
    .locals 8

    const-string v0, "format"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;-><init>(IILandroid/graphics/Bitmap$CompressFormat;IJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;

    iget v1, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->width:I

    iget v3, p1, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->width:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->height:I

    iget v3, p1, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->height:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->format:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p1, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->format:Landroid/graphics/Bitmap$CompressFormat;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->quality:I

    iget v3, p1, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->quality:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->frame:J

    iget-wide v5, p1, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->frame:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->format:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public final getFrame()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->frame:J

    return-wide v0
.end method

.method public final getHeight()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->height:I

    return v0
.end method

.method public final getQuality()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->quality:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->format:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->quality:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->frame:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->width:I

    iget v1, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->height:I

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->format:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->quality:I

    iget-wide v4, p0, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->frame:J

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ThumbLoadOption(width="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", height="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
