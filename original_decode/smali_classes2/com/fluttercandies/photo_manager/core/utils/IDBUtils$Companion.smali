.class public final Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;
.super Ljava/lang/Object;
.source "IDBUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\tR\u0019\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0019\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\u0017\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;",
        "",
        "()V",
        "allUri",
        "Landroid/net/Uri;",
        "getAllUri",
        "()Landroid/net/Uri;",
        "isAboveAndroidQ",
        "",
        "()Z",
        "storeBucketKeys",
        "",
        "",
        "getStoreBucketKeys",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "storeImageKeys",
        "",
        "getStoreImageKeys",
        "()Ljava/util/List;",
        "storeVideoKeys",
        "getStoreVideoKeys",
        "typeKeys",
        "getTypeKeys",
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
.field static final synthetic $$INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

.field private static final isAboveAndroidQ:Z

.field private static final storeBucketKeys:[Ljava/lang/String;

.field private static final storeImageKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final storeVideoKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final typeKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;-><init>()V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->$$INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ:Z

    const-string v2, "_display_name"

    const-string v3, "_data"

    const-string v4, "_id"

    const-string v5, "title"

    const-string v6, "bucket_id"

    const-string v7, "bucket_display_name"

    const-string v8, "width"

    const-string v9, "height"

    const-string v10, "orientation"

    const-string v11, "date_added"

    const-string v12, "date_modified"

    const-string v13, "mime_type"

    const-string v14, "datetaken"

    .line 62
    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 64
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "datetaken"

    if-lt v2, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->storeImageKeys:Ljava/util/List;

    const-string v4, "_display_name"

    const-string v5, "_data"

    const-string v6, "_id"

    const-string v7, "title"

    const-string v8, "bucket_id"

    const-string v9, "bucket_display_name"

    const-string v10, "date_added"

    const-string v11, "width"

    const-string v12, "height"

    const-string v13, "orientation"

    const-string v14, "date_modified"

    const-string v15, "mime_type"

    const-string v16, "duration"

    .line 80
    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 82
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_2
    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->storeVideoKeys:Ljava/util/List;

    const-string v0, "media_type"

    const-string v1, "_display_name"

    .line 87
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 85
    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->typeKeys:[Ljava/lang/String;

    const-string v0, "bucket_id"

    const-string v1, "bucket_display_name"

    .line 90
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->storeBucketKeys:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAllUri()Landroid/net/Uri;
    .locals 2

    const-string v0, "external"

    .line 93
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "getContentUri(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getStoreBucketKeys()[Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->storeBucketKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public final getStoreImageKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->storeImageKeys:Ljava/util/List;

    return-object v0
.end method

.method public final getStoreVideoKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->storeVideoKeys:Ljava/util/List;

    return-object v0
.end method

.method public final getTypeKeys()[Ljava/lang/String;
    .locals 1

    .line 85
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->typeKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public final isAboveAndroidQ()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ:Z

    return v0
.end method
