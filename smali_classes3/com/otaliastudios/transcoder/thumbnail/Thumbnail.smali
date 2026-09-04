.class public final Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;",
        "",
        "request",
        "Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;",
        "positionUs",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "(Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;JLandroid/graphics/Bitmap;)V",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "getPositionUs",
        "()J",
        "getRequest",
        "()Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;",
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
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final positionUs:J

.field private final request:Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;JLandroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;->request:Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;

    .line 7
    iput-wide p2, p0, Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;->positionUs:J

    .line 8
    iput-object p4, p0, Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getPositionUs()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;->positionUs:J

    return-wide v0
.end method

.method public final getRequest()Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;->request:Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;

    return-object v0
.end method
