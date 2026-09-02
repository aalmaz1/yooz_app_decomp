.class public interface abstract Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;
.super Ljava/lang/Object;
.source "IDBUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;,
        Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u000c\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008f\u0018\u0000 l2\u00020\u0001:\u0001lJ\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007H\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\"\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007H&J \u0010\u0018\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0012H\u0016J(\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0007H\u0016J$\u0010\u001c\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u000bH&J@\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001f2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH&J>\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001f2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH&J*\u0010&\u001a\u0004\u0018\u00010\'2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH&J(\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\'0\u001f2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH&J6\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001f2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0012H\u0016J$\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001f2\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001fH\u0016J\u0016\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001f2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u001a\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007H&J\"\u0010/\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u000bH&J&\u00101\u001a\u0008\u0012\u0004\u0012\u00020\'0\u001f2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH&J\u0010\u00102\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J \u00103\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u0002042\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J \u00105\u001a\u0002062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u00107\u001a\u00020\u00152\u0006\u00108\u001a\u00020\u000bH&J\u001f\u00109\u001a\u0004\u0018\u0001042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u0007H\u0016\u00a2\u0006\u0002\u0010:J(\u0010;\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010<2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0007H&J\"\u0010=\u001a\u0004\u0018\u00010\u00072\u0006\u0010$\u001a\u00020\u00122\u0006\u0010>\u001a\u00020\u00122\u0006\u0010?\u001a\u00020\u001aH\u0016J\u0010\u0010@\u001a\u00020\u00122\u0006\u0010A\u001a\u00020\u0012H\u0016J\"\u0010B\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u0002042\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0008\u0002\u0010C\u001a\u00020\u000bH\u0016J\u0018\u0010D\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010E\u001a\u00020\'H\u0016J4\u0010F\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020\u00032\u0006\u0010J\u001a\u00020K2\u0008\u0008\u0002\u0010L\u001a\u00020\u000bH\u0002J\u0013\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00070NH&\u00a2\u0006\u0002\u0010OJ\u0018\u0010P\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007H\u0016J\"\u0010Q\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007H&J\u0010\u0010R\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J4\u0010S\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010T\u001a\u0002062\u0006\u0010U\u001a\u00020\u00072\u0006\u0010V\u001a\u00020\u00072\u0008\u0010W\u001a\u0004\u0018\u00010\u0007H\u0016J4\u0010S\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010X\u001a\u00020\u00072\u0006\u0010U\u001a\u00020\u00072\u0006\u0010V\u001a\u00020\u00072\u0008\u0010W\u001a\u0004\u0018\u00010\u0007H\u0016J4\u0010Y\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010X\u001a\u00020\u00072\u0006\u0010U\u001a\u00020\u00072\u0006\u0010V\u001a\u00020\u00072\u0008\u0010W\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u0007H\u0016J\u0014\u0010]\u001a\u00020\u0012*\u00020^2\u0006\u0010_\u001a\u00020\u0007H\u0016J\u0014\u0010`\u001a\u000204*\u00020^2\u0006\u0010_\u001a\u00020\u0007H\u0016J\u0014\u0010a\u001a\u00020\u0007*\u00020^2\u0006\u0010_\u001a\u00020\u0007H\u0016J\u0016\u0010b\u001a\u0004\u0018\u00010\u0007*\u00020^2\u0006\u0010_\u001a\u00020\u0007H\u0016JO\u0010c\u001a\u0004\u0018\u00010^*\u00020d2\u0006\u0010e\u001a\u00020\u00032\u000e\u0010f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010N2\u0008\u0010g\u001a\u0004\u0018\u00010\u00072\u000e\u0010h\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010N2\u0008\u0010i\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0002\u0010jJ \u0010k\u001a\u0004\u0018\u00010\u0015*\u00020^2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u000bH\u0016R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006m"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;",
        "",
        "allUri",
        "Landroid/net/Uri;",
        "getAllUri",
        "()Landroid/net/Uri;",
        "idSelection",
        "",
        "getIdSelection",
        "()Ljava/lang/String;",
        "assetExists",
        "",
        "context",
        "Landroid/content/Context;",
        "id",
        "clearFileCache",
        "",
        "convertTypeToMediaType",
        "",
        "type",
        "copyToGallery",
        "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;",
        "assetId",
        "galleryId",
        "getAssetCount",
        "option",
        "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
        "requestType",
        "getAssetEntity",
        "checkIfExists",
        "getAssetListPaged",
        "",
        "pathId",
        "page",
        "size",
        "getAssetListRange",
        "start",
        "end",
        "getAssetPathEntityFromId",
        "Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;",
        "getAssetPathList",
        "getAssetsByRange",
        "getAssetsPath",
        "ids",
        "getColumnNames",
        "getExif",
        "Landroidx/exifinterface/media/ExifInterface;",
        "getFilePath",
        "origin",
        "getMainAssetPathEntity",
        "getMediaType",
        "getMediaUri",
        "",
        "getOriginBytes",
        "",
        "asset",
        "needLocationPermission",
        "getPathModifiedDate",
        "(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;",
        "getSomeInfo",
        "Lkotlin/Pair;",
        "getSortOrder",
        "pageSize",
        "filterOption",
        "getTypeFromMediaType",
        "mediaType",
        "getUri",
        "isOrigin",
        "injectModifiedDate",
        "entity",
        "insertUri",
        "inputStream",
        "Ljava/io/InputStream;",
        "contentUri",
        "values",
        "Landroid/content/ContentValues;",
        "shouldKeepPath",
        "keys",
        "",
        "()[Ljava/lang/String;",
        "logRowWithId",
        "moveToGallery",
        "removeAllExistsAssets",
        "saveImage",
        "bytes",
        "title",
        "desc",
        "relativePath",
        "fromPath",
        "saveVideo",
        "throwMsg",
        "",
        "msg",
        "getInt",
        "Landroid/database/Cursor;",
        "columnName",
        "getLong",
        "getString",
        "getStringOrNull",
        "logQuery",
        "Landroid/content/ContentResolver;",
        "uri",
        "projection",
        "selection",
        "selectionArgs",
        "sortOrder",
        "(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;",
        "toAssetEntity",
        "Companion",
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
.field public static final Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->$$INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    return-void
.end method


# virtual methods
.method public abstract assetExists(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract clearFileCache(Landroid/content/Context;)V
.end method

.method public abstract convertTypeToMediaType(I)I
.end method

.method public abstract copyToGallery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
.end method

.method public abstract getAllUri()Landroid/net/Uri;
.end method

.method public abstract getAssetCount(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;I)I
.end method

.method public abstract getAssetCount(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/lang/String;)I
.end method

.method public abstract getAssetEntity(Landroid/content/Context;Ljava/lang/String;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
.end method

.method public abstract getAssetListPaged(Landroid/content/Context;Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "III",
            "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
            ")",
            "Ljava/util/List<",
            "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssetListRange(Landroid/content/Context;Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "III",
            "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
            ")",
            "Ljava/util/List<",
            "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssetPathEntityFromId(Landroid/content/Context;Ljava/lang/String;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;
.end method

.method public abstract getAssetPathList(Landroid/content/Context;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
            ")",
            "Ljava/util/List<",
            "Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssetsByRange(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
            "III)",
            "Ljava/util/List<",
            "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssetsPath(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getColumnNames(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExif(Landroid/content/Context;Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface;
.end method

.method public abstract getFilePath(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getIdSelection()Ljava/lang/String;
.end method

.method public abstract getInt(Landroid/database/Cursor;Ljava/lang/String;)I
.end method

.method public abstract getLong(Landroid/database/Cursor;Ljava/lang/String;)J
.end method

.method public abstract getMainAssetPathEntity(Landroid/content/Context;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
            ")",
            "Ljava/util/List<",
            "Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaType(I)I
.end method

.method public abstract getMediaUri(Landroid/content/Context;JI)Ljava/lang/String;
.end method

.method public abstract getOriginBytes(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;Z)[B
.end method

.method public abstract getPathModifiedDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract getSomeInfo(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSortOrder(IILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/lang/String;
.end method

.method public abstract getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTypeFromMediaType(I)I
.end method

.method public abstract getUri(JIZ)Landroid/net/Uri;
.end method

.method public abstract injectModifiedDate(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;)V
.end method

.method public abstract keys()[Ljava/lang/String;
.end method

.method public abstract logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract logRowWithId(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract moveToGallery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
.end method

.method public abstract removeAllExistsAssets(Landroid/content/Context;)Z
.end method

.method public abstract saveImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
.end method

.method public abstract saveImage(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
.end method

.method public abstract saveVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
.end method

.method public abstract throwMsg(Ljava/lang/String;)Ljava/lang/Void;
.end method

.method public abstract toAssetEntity(Landroid/database/Cursor;Landroid/content/Context;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
.end method
