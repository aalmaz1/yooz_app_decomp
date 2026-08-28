.class public final Landroidx/media3/extractor/SeekMap$SeekPoints;
.super Ljava/lang/Object;
.source "SeekMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekPoints"
.end annotation


# instance fields
.field public final first:Landroidx/media3/extractor/SeekPoint;

.field public final second:Landroidx/media3/extractor/SeekPoint;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/SeekPoint;)V
    .registers 2

    .line 83
    invoke-direct {p0, p1, p1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/SeekPoint;

    iput-object p1, p0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    .line 92
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/SeekPoint;

    iput-object p1, p0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 108
    :cond_12
    check-cast p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 109
    iget-object v2, p0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-object v3, p1, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    invoke-virtual {v2, v3}, Landroidx/media3/extractor/SeekPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-object p1, p1, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    invoke-virtual {v2, p1}, Landroidx/media3/extractor/SeekPoint;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 114
    iget-object v0, p0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    invoke-virtual {v0}, Landroidx/media3/extractor/SeekPoint;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    invoke-virtual {v1}, Landroidx/media3/extractor/SeekPoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-object v2, p0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/SeekPoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, ""

    goto :goto_2b

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
