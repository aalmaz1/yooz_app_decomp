.class public final Lcom/otaliastudios/transcoder/thumbnail/SingleThumbnailRequest;
.super Ljava/lang/Object;
.source "SingleThumbnailRequest.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00062\u0006\u0010\u0007\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/thumbnail/SingleThumbnailRequest;",
        "Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;",
        "positionUs",
        "",
        "(J)V",
        "locate",
        "",
        "durationUs",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final positionUs:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/otaliastudios/transcoder/thumbnail/SingleThumbnailRequest;->positionUs:J

    return-void
.end method


# virtual methods
.method public locate(J)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 5
    iget-wide v0, p0, Lcom/otaliastudios/transcoder/thumbnail/SingleThumbnailRequest;->positionUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    const/4 v5, 0x0

    if-gtz v4, :cond_e

    cmp-long v4, v0, p1

    if-gtz v4, :cond_e

    const/4 v5, 0x1

    :cond_e
    if-eqz v5, :cond_19

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 6
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thumbnail position is out of range. position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/thumbnail/SingleThumbnailRequest;->positionUs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lkotlin/ranges/LongRange;

    invoke-direct {v1, v2, v3, p1, p2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method
