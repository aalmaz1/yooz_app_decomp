.class public final Lcom/fluttercandies/photo_manager/constant/Methods;
.super Ljava/lang/Object;
.source "Methods.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/constant/Methods$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/constant/Methods;",
        "",
        "()V",
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
.field public static final Companion:Lcom/fluttercandies/photo_manager/constant/Methods$Companion;

.field public static final assetExists:Ljava/lang/String; = "assetExists"

.field public static final cancelCacheRequests:Ljava/lang/String; = "cancelCacheRequests"

.field public static final clearFileCache:Ljava/lang/String; = "clearFileCache"

.field public static final copyAsset:Ljava/lang/String; = "copyAsset"

.field public static final deleteWithIds:Ljava/lang/String; = "deleteWithIds"

.field public static final fetchEntityProperties:Ljava/lang/String; = "fetchEntityProperties"

.field public static final fetchPathProperties:Ljava/lang/String; = "fetchPathProperties"

.field public static final forceOldAPI:Ljava/lang/String; = "forceOldApi"

.field public static final getAssetCount:Ljava/lang/String; = "getAssetCount"

.field public static final getAssetCountFromPath:Ljava/lang/String; = "getAssetCountFromPath"

.field public static final getAssetListPaged:Ljava/lang/String; = "getAssetListPaged"

.field public static final getAssetListRange:Ljava/lang/String; = "getAssetListRange"

.field public static final getAssetPathList:Ljava/lang/String; = "getAssetPathList"

.field public static final getAssetsByRange:Ljava/lang/String; = "getAssetsByRange"

.field public static final getColumnNames:Ljava/lang/String; = "getColumnNames"

.field public static final getFullFile:Ljava/lang/String; = "getFullFile"

.field public static final getLatLng:Ljava/lang/String; = "getLatLngAndroidQ"

.field public static final getMediaUrl:Ljava/lang/String; = "getMediaUrl"

.field public static final getOriginBytes:Ljava/lang/String; = "getOriginBytes"

.field public static final getThumbnail:Ljava/lang/String; = "getThumb"

.field private static final haveRequestTypeMethods:[Ljava/lang/String;

.field public static final ignorePermissionCheck:Ljava/lang/String; = "ignorePermissionCheck"

.field public static final log:Ljava/lang/String; = "log"

.field public static final moveAssetToPath:Ljava/lang/String; = "moveAssetToPath"

.field public static final moveToTrash:Ljava/lang/String; = "moveToTrash"

.field private static final needMediaLocationMethods:[Ljava/lang/String;

.field public static final notify:Ljava/lang/String; = "notify"

.field public static final openSetting:Ljava/lang/String; = "openSetting"

.field public static final presentLimited:Ljava/lang/String; = "presentLimited"

.field public static final releaseMemoryCache:Ljava/lang/String; = "releaseMemoryCache"

.field public static final removeNoExistsAssets:Ljava/lang/String; = "removeNoExistsAssets"

.field public static final requestCacheAssetsThumbnail:Ljava/lang/String; = "requestCacheAssetsThumb"

.field public static final requestPermissionExtend:Ljava/lang/String; = "requestPermissionExtend"

.field public static final saveImage:Ljava/lang/String; = "saveImage"

.field public static final saveImageWithPath:Ljava/lang/String; = "saveImageWithPath"

.field public static final saveVideo:Ljava/lang/String; = "saveVideo"

.field public static final systemVersion:Ljava/lang/String; = "systemVersion"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/fluttercandies/photo_manager/constant/Methods$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fluttercandies/photo_manager/constant/Methods$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/fluttercandies/photo_manager/constant/Methods;->Companion:Lcom/fluttercandies/photo_manager/constant/Methods$Companion;

    const-string v2, "fetchPathProperties"

    const-string v3, "getAssetPathList"

    const-string v4, "getAssetListPaged"

    const-string v5, "getAssetCountFromPath"

    const-string v6, "getAssetListRange"

    const-string v7, "getAssetCount"

    const-string v8, "getAssetsByRange"

    .line 55
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 48
    sput-object v0, Lcom/fluttercandies/photo_manager/constant/Methods;->haveRequestTypeMethods:[Ljava/lang/String;

    const-string v0, "getFullFile"

    const-string v1, "getOriginBytes"

    const-string v2, "getLatLngAndroidQ"

    .line 89
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 86
    sput-object v0, Lcom/fluttercandies/photo_manager/constant/Methods;->needMediaLocationMethods:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHaveRequestTypeMethods$cp()[Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/fluttercandies/photo_manager/constant/Methods;->haveRequestTypeMethods:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getNeedMediaLocationMethods$cp()[Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/fluttercandies/photo_manager/constant/Methods;->needMediaLocationMethods:[Ljava/lang/String;

    return-object v0
.end method
