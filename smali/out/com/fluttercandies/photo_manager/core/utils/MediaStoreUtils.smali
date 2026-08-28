.class public final Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;
.super Ljava/lang/Object;
.source "MediaStoreUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0004J\u0016\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u0004\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;",
        "",
        "()V",
        "convertTypeToMediaType",
        "",
        "type",
        "getInsertUri",
        "Landroid/net/Uri;",
        "mediaType",
        "getUri",
        "id",
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


# static fields
.field public static final INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;-><init>()V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertTypeToMediaType(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    if-eq p1, v0, :cond_b

    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    move v0, v1

    :cond_c
    :goto_c
    return v0
.end method

.method public final getInsertUri(I)Landroid/net/Uri;
    .registers 4

    const/4 v0, 0x1

    const-string v1, "EXTERNAL_CONTENT_URI"

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    .line 13
    sget-object p1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getAllUri()Landroid/net/Uri;

    move-result-object p1

    goto :goto_23

    .line 11
    :cond_12
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_23

    .line 10
    :cond_18
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_23

    .line 12
    :cond_1e
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_23
    return-object p1
.end method

.method public final getUri(JI)Landroid/net/Uri;
    .registers 4

    .line 18
    invoke-virtual {p0, p3}, Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;->getInsertUri(I)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "withAppendedId(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
