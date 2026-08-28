.class public final Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;
.super Ljava/lang/Object;
.source "IDBUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIDBUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IDBUtils.kt\ncom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,759:1\n1#2:760\n37#3,2:761\n37#3,2:763\n37#3,2:765\n37#3,2:767\n26#4:769\n*S KotlinDebug\n*F\n+ 1 IDBUtils.kt\ncom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls\n*L\n602#1:761,2\n697#1:763,2\n726#1:765,2\n743#1:767,2\n674#1:769\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static assetExists(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_id"

    .line 494
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 495
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p1, "getContentResolver(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v3

    const-string v5, "_id = ?"

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-interface/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    :try_start_2d
    move-object p2, p0

    check-cast p2, Landroid/database/Cursor;
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_43

    const/4 v1, 0x0

    if-nez p2, :cond_37

    .line 497
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v0

    .line 499
    :cond_37
    :try_start_37
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_43

    if-lt p2, p1, :cond_3e

    goto :goto_3f

    :cond_3e
    move p1, v0

    :goto_3f
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return p1

    :catchall_43
    move-exception p1

    :try_start_44
    throw p1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p2

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static clearFileCache(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static convertTypeToMediaType(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;I)I
    .registers 2

    .line 141
    sget-object p0, Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;

    invoke-virtual {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;->convertTypeToMediaType(I)I

    move-result p0

    return p0
.end method

.method public static getAllUri(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;)Landroid/net/Uri;
    .registers 1

    .line 103
    sget-object p0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getAllUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getAssetCount(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;I)I
    .registers 12

    const-string v0, "context"

    .line 697
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 694
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 695
    invoke-virtual {p2, p3, p1, v0}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->makeWhere(ILjava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v5

    .line 696
    invoke-virtual {p2}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->orderByCondString()Ljava/lang/String;

    move-result-object v7

    .line 697
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v3

    const-string p2, "_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    check-cast p1, Ljava/util/Collection;

    new-array p2, v0, [Ljava/lang/String;

    .line 764
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [Ljava/lang/String;

    move-object v1, p0

    .line 697
    invoke-interface/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    :try_start_3b
    move-object p1, p0

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_44

    .line 698
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_49

    :cond_44
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v0

    :catchall_49
    move-exception p1

    :try_start_4a
    throw p1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception p2

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static getAssetCount(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/lang/String;)I
    .registers 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "galleryId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 709
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 710
    invoke-virtual {p2, p3, p1, v0}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->makeWhere(ILjava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object p3

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "isAll"

    .line 714
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_49

    .line 715
    move-object p3, v1

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_39

    const/4 p3, 0x1

    goto :goto_3a

    :cond_39
    move p3, v0

    :goto_3a
    if-eqz p3, :cond_41

    const-string p3, " AND "

    .line 716
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    const-string p3, "bucket_id = ?"

    .line 718
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string p3, "toString(...)"

    invoke-static {v5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    invoke-virtual {p2}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->orderByCondString()Ljava/lang/String;

    move-result-object v7

    .line 726
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v3

    const-string p2, "_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    check-cast p1, Ljava/util/Collection;

    new-array p2, v0, [Ljava/lang/String;

    .line 766
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [Ljava/lang/String;

    move-object v1, p0

    .line 726
    invoke-interface/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    :try_start_75
    move-object p1, p0

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_7e

    .line 727
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_83

    :cond_7e
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v0

    :catchall_83
    move-exception p1

    :try_start_84
    throw p1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_85

    :catchall_85
    move-exception p2

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static synthetic getAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 6

    if-nez p5, :cond_c

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x1

    .line 129
    :cond_7
    invoke-interface {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAssetEntity(Landroid/content/Context;Ljava/lang/String;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getAssetEntity"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getAssetListPaged$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/lang/Object;)Ljava/util/List;
    .registers 16

    if-nez p8, :cond_13

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_7

    const/4 p5, 0x0

    :cond_7
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    .line 111
    invoke-interface/range {v0 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAssetListPaged(Landroid/content/Context;Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getAssetListPaged"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getAssetPathList$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/lang/Object;)Ljava/util/List;
    .registers 6

    if-nez p5, :cond_c

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_7

    const/4 p2, 0x0

    .line 105
    :cond_7
    invoke-interface {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAssetPathList(Landroid/content/Context;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getAssetPathList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAssetsByRange(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;III)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;",
            "Landroid/content/Context;",
            "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
            "III)",
            "Ljava/util/List<",
            "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 741
    invoke-virtual {p2, p5, v0, v8}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->makeWhere(ILjava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v5

    .line 742
    invoke-virtual {p2}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->orderByCondString()Ljava/lang/String;

    move-result-object v7

    .line 743
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->keys()[Ljava/lang/String;

    move-result-object v4

    check-cast v0, Ljava/util/Collection;

    new-array p2, v8, [Ljava/lang/String;

    .line 768
    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 743
    move-object v6, p2

    check-cast v6, [Ljava/lang/String;

    move-object v1, p0

    invoke-interface/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_71

    check-cast p2, Ljava/io/Closeable;

    :try_start_3b
    move-object p5, p2

    check-cast p5, Landroid/database/Cursor;

    .line 744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v1, p3, -0x1

    .line 745
    invoke-interface {p5, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 746
    :cond_48
    :goto_48
    invoke-interface {p5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 747
    invoke-interface {p0, p5, p1, v8}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->toAssetEntity(Landroid/database/Cursor;Landroid/content/Context;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v1

    if-nez v1, :cond_55

    goto :goto_48

    .line 748
    :cond_55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int v2, p4, p3

    if-ne v1, v2, :cond_48

    .line 755
    :cond_63
    check-cast v0, Ljava/util/List;
    :try_end_65
    .catchall {:try_start_3b .. :try_end_65} :catchall_6a

    const/4 p0, 0x0

    invoke-static {p2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_6a
    move-exception p0

    :try_start_6b
    throw p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p1

    invoke-static {p2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 756
    :cond_71
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAssetsPath(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ids"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    move-object v2, v8

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x1f4

    if-le v3, v5, :cond_51

    .line 575
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 576
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v6

    .line 577
    div-int/lit16 v7, v6, 0x1f4

    .line 578
    rem-int/2addr v6, v5

    if-eqz v6, :cond_2c

    add-int/lit8 v7, v7, 0x1

    :cond_2c
    :goto_2c
    if-ge v4, v7, :cond_4e

    add-int/lit8 v6, v7, -0x1

    if-ne v4, v6, :cond_37

    .line 583
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v6

    goto :goto_3c

    :cond_37
    add-int/lit8 v6, v4, 0x1

    mul-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    :goto_3c
    mul-int/lit16 v9, v4, 0x1f4

    .line 589
    invoke-interface {v8, v9, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAssetsPath(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 590
    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 592
    :cond_4e
    check-cast v3, Ljava/util/List;

    return-object v3

    :cond_51
    const-string v3, "media_type"

    const-string v9, "_id"

    const-string v10, "_data"

    .line 595
    filled-new-array {v9, v3, v10}, [Ljava/lang/String;

    move-result-object v5

    .line 596
    move-object v11, v8

    check-cast v11, Ljava/lang/Iterable;

    const-string v3, ","

    move-object v12, v3

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v3, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$getAssetsPath$idSelection$1;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$getAssetsPath$idSelection$1;

    move-object/from16 v17, v3

    check-cast v17, Lkotlin/jvm/functions/Function1;

    const/16 v18, 0x1e

    const/16 v19, 0x0

    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 597
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_id in ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 598
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v1, "getContentResolver(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    invoke-interface/range {p0 .. p0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v7

    new-array v1, v4, [Ljava/lang/String;

    .line 762
    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 602
    move-object v11, v1

    check-cast v11, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v7

    move-object v4, v5

    move-object v5, v6

    move-object v6, v11

    move-object v7, v12

    .line 598
    invoke-interface/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_b5

    .line 604
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 605
    :cond_b5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 606
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 607
    check-cast v1, Ljava/io/Closeable;

    :try_start_c1
    move-object v4, v1

    check-cast v4, Landroid/database/Cursor;

    .line 608
    :goto_c4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 609
    invoke-interface {v0, v4, v9}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 610
    invoke-interface {v0, v4, v10}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 611
    move-object v7, v3

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c4

    .line 613
    :cond_d9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_db
    .catchall {:try_start_c1 .. :try_end_db} :catchall_fe

    const/4 v0, 0x0

    .line 607
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 614
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e3
    :goto_e3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 615
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_e3

    .line 616
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    .line 619
    :cond_fb
    check-cast v2, Ljava/util/List;

    return-object v2

    :catchall_fe
    move-exception v0

    move-object v2, v0

    .line 607
    :try_start_100
    throw v2
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_101

    :catchall_101
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getColumnNames(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    .line 652
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 652
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-interface/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3b

    check-cast p0, Ljava/io/Closeable;

    :try_start_1d
    move-object p1, p0

    check-cast p1, Landroid/database/Cursor;

    .line 653
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    const-string v0, "getColumnNames(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_34

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_34
    move-exception p1

    :try_start_35
    throw p1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 655
    :cond_3b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getIdSelection(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;)Ljava/lang/String;
    .registers 1

    const-string p0, "_id = ?"

    return-object p0
.end method

.method public static getInt(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 3

    const-string p0, "$receiver"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "columnName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method public static getLong(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 3

    const-string p0, "$receiver"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "columnName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getMediaType(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;I)I
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_c

    const/4 p0, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    if-eq p1, p0, :cond_b

    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    move p0, v0

    :cond_c
    :goto_c
    return p0
.end method

.method public static getMediaUri(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;JI)Ljava/lang/String;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 530
    invoke-interface {p0, p2, p3, p4, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getUri(JIZ)Landroid/net/Uri;

    move-result-object p0

    .line 531
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getPathModifiedDate(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date_modified"

    .line 629
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "date_modified desc"

    const-string v1, "isAll"

    .line 631
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "getContentResolver(...)"

    if-eqz v1, :cond_30

    .line 632
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_49

    .line 634
    :cond_30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    invoke-interface {p0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v3

    const-string v5, "bucket_id = ?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v6, v1

    move-object v1, p0

    move-object v2, p1

    .line 634
    invoke-interface/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_49
    const/4 p2, 0x0

    if-nez p1, :cond_4d

    return-object p2

    .line 642
    :cond_4d
    check-cast p1, Ljava/io/Closeable;

    :try_start_4f
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    .line 643
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 644
    invoke-interface {p0, v1, v0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_60
    .catchall {:try_start_4f .. :try_end_60} :catchall_6a

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    .line 646
    :cond_64
    :try_start_64
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_66
    .catchall {:try_start_64 .. :try_end_66} :catchall_6a

    .line 642
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_6a
    move-exception p0

    :try_start_6b
    throw p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p2

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static getSortOrder(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;IILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/lang/String;
    .registers 4

    const-string p0, "filterOption"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p3}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->orderByCondString()Ljava/lang/String;

    move-result-object p0

    .line 542
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, " LIMIT "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " OFFSET "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "$receiver"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "columnName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_16

    const-string p0, ""

    :cond_16
    return-object p0
.end method

.method public static getStringOrNull(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "$receiver"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "columnName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTypeFromMediaType(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;I)I
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_c

    const/4 p0, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    if-eq p1, p0, :cond_b

    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    move p0, v0

    :cond_c
    :goto_c
    return p0
.end method

.method public static getUri(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;JIZ)Landroid/net/Uri;
    .registers 5

    const/4 p0, 0x1

    if-eq p3, p0, :cond_1f

    const/4 p0, 0x2

    if-eq p3, p0, :cond_18

    const/4 p0, 0x3

    if-eq p3, p0, :cond_11

    .line 556
    sget-object p0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string p1, "EMPTY"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 555
    :cond_11
    sget-object p0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    goto :goto_25

    .line 554
    :cond_18
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    goto :goto_25

    .line 553
    :cond_1f
    sget-object p0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    .line 556
    :goto_25
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p4, :cond_33

    .line 560
    invoke-static {p0}, Landroid/provider/MediaStore;->setRequireOriginal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "setRequireOriginal(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_33
    return-object p0
.end method

.method public static synthetic getUri$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;JIZILjava/lang/Object;)Landroid/net/Uri;
    .registers 7

    if-nez p6, :cond_c

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_7

    const/4 p4, 0x0

    .line 551
    :cond_7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getUri(JIZ)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getUri"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static injectModifiedDate(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p2}, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getPathModifiedDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_21

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    .line 624
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->setModifiedDate(Ljava/lang/Long;)V

    :cond_21
    return-void
.end method

.method private static insertUri(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/io/InputStream;Landroid/net/Uri;Landroid/content/ContentValues;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 13

    .line 480
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 482
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_67

    .line 483
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    const/4 p4, 0x0

    if-nez p5, :cond_56

    .line 485
    invoke-virtual {v0, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p5

    if-eqz p5, :cond_3b

    .line 487
    check-cast p5, Ljava/io/Closeable;

    :try_start_19
    move-object v3, p5

    check-cast v3, Ljava/io/OutputStream;

    check-cast p2, Ljava/io/Closeable;
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_34

    :try_start_1e
    move-object v4, p2

    check-cast v4, Ljava/io/InputStream;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v3, v5, v6, p4}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_2d

    :try_start_26
    invoke-static {p2, p4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_34

    invoke-static {p5, p4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_56

    :catchall_2d
    move-exception p0

    :try_start_2e
    throw p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p1

    :try_start_30
    invoke-static {p2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    :try_start_35
    throw p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p1

    invoke-static {p5, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 486
    :cond_3b
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot open the output stream for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 489
    :cond_56
    :goto_56
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 490
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p0

    return-object p0

    .line 482
    :cond_67
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Cannot insert the new asset."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic insertUri$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/io/InputStream;Landroid/net/Uri;Landroid/content/ContentValues;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 14

    if-nez p7, :cond_12

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_7

    const/4 p5, 0x0

    :cond_7
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 473
    invoke-static/range {v0 .. v5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->insertUri(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/io/InputStream;Landroid/net/Uri;Landroid/content/ContentValues;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: insertUri"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static logQuery(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15

    const-string p0, "$receiver"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "uri"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    :try_start_a
    invoke-virtual/range {p1 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 683
    new-instance p1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$logQuery$1;

    sget-object v0, Lcom/fluttercandies/photo_manager/util/LogUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/util/LogUtils;

    invoke-direct {p1, v0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$logQuery$1;-><init>(Ljava/lang/Object;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->logQuery$log(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/database/Cursor;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    move-exception p0

    .line 686
    new-instance p1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$logQuery$2;

    sget-object v0, Lcom/fluttercandies/photo_manager/util/LogUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/util/LogUtils;

    invoke-direct {p1, v0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$logQuery$2;-><init>(Ljava/lang/Object;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->logQuery$log(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/database/Cursor;)V

    const-string p1, "happen query error"

    .line 687
    move-object p2, p0

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p1, p2}, Lcom/fluttercandies/photo_manager/util/LogUtils;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 688
    throw p0
.end method

.method private static logQuery$log(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/database/Cursor;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 666
    sget-object v1, Lcom/fluttercandies/photo_manager/util/LogUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/util/LogUtils;

    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/util/LogUtils;->isLog()Z

    move-result v1

    if-eqz v1, :cond_15b

    .line 667
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "append(...)"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0xa

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ", "

    const/4 v13, 0x0

    if-eqz p1, :cond_4f

    .line 669
    move-object v15, v1

    check-cast v15, Ljava/lang/CharSequence;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3e

    const/16 v22, 0x0

    move-object/from16 v14, p1

    invoke-static/range {v14 .. v22}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_50

    :cond_4f
    move-object v2, v13

    :goto_50
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "projection: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_9e

    .line 671
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    move-object/from16 v1, p3

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9f

    :cond_9e
    move-object v1, v13

    :goto_9f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selectionArgs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sortOrder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_108

    const-string v1, "?"

    const-string v2, "%s"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p2

    .line 674
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_108

    if-nez p3, :cond_f2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    goto :goto_f4

    :cond_f2
    move-object/from16 v1, p3

    :goto_f4
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_109

    :cond_108
    move-object v0, v13

    .line 675
    :goto_109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sql: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p6, :cond_130

    .line 676
    invoke-interface/range {p6 .. p6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :cond_130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cursor count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15b
    return-void
.end method

.method public static logRowWithId(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    sget-object v0, Lcom/fluttercandies/photo_manager/util/LogUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/util/LogUtils;

    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->isLog()Z

    move-result v0

    if-eqz v0, :cond_b6

    const/16 v0, 0x28

    const/16 v1, 0x2d

    const-string v2, ""

    .line 513
    invoke-static {v2, v0, v1}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "log error row "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " start "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fluttercandies/photo_manager/util/LogUtils;->info(Ljava/lang/Object;)V

    .line 516
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string p1, "getContentResolver(...)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "_id = ?"

    const/4 p1, 0x1

    new-array v8, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v8, p1

    const/4 v9, 0x0

    move-object v3, p0

    invoke-interface/range {v3 .. v9}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_9c

    .line 517
    check-cast p0, Ljava/io/Closeable;

    :try_start_58
    move-object v1, p0

    check-cast v1, Landroid/database/Cursor;

    .line 518
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 519
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 520
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v4, v3

    :goto_69
    if-ge p1, v4, :cond_8e

    .line 521
    aget-object v5, v3, p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fluttercandies/photo_manager/util/LogUtils;->info(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_69

    .line 524
    :cond_8e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_90
    .catchall {:try_start_58 .. :try_end_90} :catchall_95

    const/4 p1, 0x0

    .line 517
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_9c

    :catchall_95
    move-exception p1

    :try_start_96
    throw p1
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_97

    :catchall_97
    move-exception p2

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 525
    :cond_9c
    :goto_9c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " end "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->info(Ljava/lang/Object;)V

    :cond_b6
    return-void
.end method

.method public static saveImage(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 24

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, "context"

    move-object/from16 v6, p1

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "fromPath"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "title"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "desc"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-static/range {p2 .. p2}, Lcom/fluttercandies/photo_manager/core/utils/CommonExtKt;->checkDirs(Ljava/lang/String;)V

    .line 328
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v8, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/16 v10, 0x3e8

    int-to-long v10, v10

    div-long/2addr v8, v10

    const/4 v12, 0x0

    .line 336
    :try_start_3b
    iget-object v13, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v13, Ljava/io/InputStream;

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 337
    new-instance v14, Lkotlin/Pair;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v14, v15, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_58} :catch_59

    goto :goto_66

    .line 339
    :catch_59
    new-instance v14, Lkotlin/Pair;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    :goto_66
    invoke-virtual {v14}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-virtual {v14}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    .line 341
    invoke-static/range {p3 .. p3}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_8e

    .line 342
    invoke-static/range {p2 .. p2}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_8e

    .line 343
    iget-object v15, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v15, Ljava/io/InputStream;

    invoke-static {v15}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    :cond_8e
    if-nez v15, :cond_92

    const-string v15, "image/*"

    .line 346
    :cond_92
    :try_start_92
    new-instance v12, Landroidx/exifinterface/media/ExifInterface;

    iget-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/io/InputStream;

    invoke-direct {v12, v6}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 347
    new-instance v6, Lkotlin/Pair;

    .line 348
    sget-object v16, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual/range {v16 .. v16}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ()Z

    move-result v16

    if-eqz v16, :cond_aa

    invoke-virtual {v12}, Landroidx/exifinterface/media/ExifInterface;->getRotationDegrees()I

    move-result v16

    goto :goto_ac

    :cond_aa
    const/16 v16, 0x0

    :goto_ac
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 349
    sget-object v16, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual/range {v16 .. v16}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ()Z

    move-result v16

    if-eqz v16, :cond_ba

    const/4 v12, 0x0

    goto :goto_be

    :cond_ba
    invoke-virtual {v12}, Landroidx/exifinterface/media/ExifInterface;->getLatLong()[D

    move-result-object v12

    .line 347
    :goto_be
    invoke-direct {v6, v0, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_c1} :catch_c2

    goto :goto_cd

    .line 352
    :catch_c2
    new-instance v6, Lkotlin/Pair;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v0, 0x0

    invoke-direct {v6, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 345
    :goto_cd
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 354
    invoke-static {v7, v5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->saveImage$refreshInputStream$4(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/io/File;)V

    .line 356
    sget-object v12, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v12}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ()Z

    move-result v12

    if-nez v12, :cond_10a

    .line 357
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    .line 358
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v7

    const-string v7, "getAbsolutePath(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v12, "getPath(...)"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x2

    move-object/from16 v17, v6

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v7, v3, v12, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    goto :goto_10f

    :cond_10a
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    const/4 v3, 0x0

    .line 361
    :goto_10f
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x1

    .line 364
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "media_type"

    .line 362
    invoke-virtual {v12, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "description"

    .line 366
    invoke-virtual {v12, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    .line 367
    invoke-virtual {v12, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mime_type"

    .line 368
    invoke-virtual {v12, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v12, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date_added"

    .line 370
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "date_modified"

    .line 371
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "width"

    .line 372
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "height"

    .line 373
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ()Z

    move-result v1

    if-eqz v1, :cond_178

    mul-long/2addr v8, v10

    .line 375
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v12, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "orientation"

    .line 376
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p5

    if-eqz v0, :cond_178

    const-string v1, "relative_path"

    .line 378
    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_178
    if-eqz v17, :cond_194

    .line 382
    invoke-static/range {v17 .. v17}, Lkotlin/collections/ArraysKt;->first([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 383
    invoke-static/range {v17 .. v17}, Lkotlin/collections/ArraysKt;->last([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_194
    if-eqz v3, :cond_19d

    const-string v0, "_data"

    move-object/from16 v1, p2

    .line 386
    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19d
    move-object/from16 v0, v16

    .line 392
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/io/InputStream;

    .line 393
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "EXTERNAL_CONTENT_URI"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v9, v12

    move v10, v3

    .line 390
    invoke-static/range {v5 .. v10}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->insertUri(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/io/InputStream;Landroid/net/Uri;Landroid/content/ContentValues;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v0

    return-object v0
.end method

.method public static saveImage(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 24

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, "context"

    move-object/from16 v6, p1

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "bytes"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "title"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "desc"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/16 v9, 0x3e8

    int-to-long v9, v9

    div-long/2addr v7, v9

    const/4 v11, 0x0

    .line 265
    :try_start_33
    iget-object v12, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Ljava/io/InputStream;

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 266
    new-instance v13, Lkotlin/Pair;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v13, v14, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_50} :catch_51

    goto :goto_5e

    .line 268
    :catch_51
    new-instance v13, Lkotlin/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    :goto_5e
    invoke-virtual {v13}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-virtual {v13}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 270
    invoke-static/range {p3 .. p3}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_80

    .line 271
    iget-object v14, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v14, Ljava/io/InputStream;

    invoke-static {v14}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    :cond_80
    if-nez v14, :cond_84

    const-string v14, "image/*"

    .line 275
    :cond_84
    :try_start_84
    new-instance v15, Landroidx/exifinterface/media/ExifInterface;

    iget-object v11, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Ljava/io/InputStream;

    invoke-direct {v15, v11}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 276
    new-instance v11, Lkotlin/Pair;

    .line 277
    sget-object v17, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual/range {v17 .. v17}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ()Z

    move-result v17

    if-eqz v17, :cond_9c

    invoke-virtual {v15}, Landroidx/exifinterface/media/ExifInterface;->getRotationDegrees()I

    move-result v17

    goto :goto_9e

    :cond_9c
    const/16 v17, 0x0

    :goto_9e
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 278
    sget-object v17, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual/range {v17 .. v17}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ()Z

    move-result v17

    if-eqz v17, :cond_ac

    const/4 v15, 0x0

    goto :goto_b0

    :cond_ac
    invoke-virtual {v15}, Landroidx/exifinterface/media/ExifInterface;->getLatLong()[D

    move-result-object v15

    .line 276
    :goto_b0
    invoke-direct {v11, v6, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_b3} :catch_b4

    goto :goto_bf

    .line 281
    :catch_b4
    new-instance v11, Lkotlin/Pair;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v15, 0x0

    invoke-direct {v11, v6, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    :goto_bf
    invoke-virtual {v11}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v11}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    .line 284
    invoke-static {v5, v0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->saveImage$refreshInputStream(Lkotlin/jvm/internal/Ref$ObjectRef;[B)V

    .line 286
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v15, 0x1

    .line 289
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v5

    const-string v5, "media_type"

    .line 287
    invoke-virtual {v0, v5, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "description"

    .line 291
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    .line 292
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mime_type"

    .line 293
    invoke-virtual {v0, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date_added"

    .line 295
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "date_modified"

    .line 296
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "width"

    .line 297
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "height"

    .line 298
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ()Z

    move-result v1

    if-eqz v1, :cond_13b

    mul-long/2addr v7, v9

    .line 300
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "orientation"

    .line 301
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v3, :cond_13b

    const-string v1, "relative_path"

    .line 303
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13b
    if-eqz v11, :cond_157

    .line 307
    invoke-static {v11}, Lkotlin/collections/ArraysKt;->first([D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 308
    invoke-static {v11}, Lkotlin/collections/ArraysKt;->last([D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_157
    move-object/from16 v1, v16

    .line 314
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Ljava/io/InputStream;

    .line 315
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "EXTERNAL_CONTENT_URI"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v9, v0

    .line 312
    invoke-static/range {v5 .. v12}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->insertUri$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/io/InputStream;Landroid/net/Uri;Landroid/content/ContentValues;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v0

    return-object v0
.end method

.method private static saveImage$refreshInputStream(Lkotlin/jvm/internal/Ref$ObjectRef;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/ByteArrayInputStream;",
            ">;[B)V"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method private static saveImage$refreshInputStream$4(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/FileInputStream;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method public static saveVideo(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 24

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, "context"

    move-object/from16 v6, p1

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "fromPath"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "title"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "desc"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-static/range {p2 .. p2}, Lcom/fluttercandies/photo_manager/core/utils/CommonExtKt;->checkDirs(Ljava/lang/String;)V

    .line 407
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v8, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/16 v10, 0x3e8

    int-to-long v10, v10

    div-long/2addr v8, v10

    .line 414
    sget-object v12, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/VideoUtils;

    invoke-virtual {v12, v0}, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils;->getPropertiesUseMediaPlayer(Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;

    move-result-object v12

    .line 415
    invoke-static/range {p3 .. p3}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_4a

    .line 416
    invoke-static/range {p2 .. p2}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_4a
    if-nez v13, :cond_4e

    const-string v13, "video/*"

    .line 419
    :cond_4e
    :try_start_4e
    new-instance v14, Landroidx/exifinterface/media/ExifInterface;

    iget-object v15, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v15, Ljava/io/InputStream;

    invoke-direct {v14, v15}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 420
    new-instance v15, Lkotlin/Pair;

    .line 421
    sget-object v17, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual/range {v17 .. v17}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ()Z

    move-result v17

    if-eqz v17, :cond_66

    invoke-virtual {v14}, Landroidx/exifinterface/media/ExifInterface;->getRotationDegrees()I

    move-result v17

    goto :goto_68

    :cond_66
    const/16 v17, 0x0

    :goto_68
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 422
    sget-object v17, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual/range {v17 .. v17}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ()Z

    move-result v17

    if-eqz v17, :cond_76

    const/4 v14, 0x0

    goto :goto_7a

    :cond_76
    invoke-virtual {v14}, Landroidx/exifinterface/media/ExifInterface;->getLatLong()[D

    move-result-object v14

    .line 420
    :goto_7a
    invoke-direct {v15, v6, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_7d} :catch_7e

    goto :goto_89

    .line 425
    :catch_7e
    new-instance v15, Lkotlin/Pair;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v6, 0x0

    invoke-direct {v15, v14, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 418
    :goto_89
    invoke-virtual {v15}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v15}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [D

    .line 427
    invoke-static {v7, v5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->saveVideo$refreshInputStream$6(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/io/File;)V

    .line 429
    sget-object v15, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v15}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ()Z

    move-result v15

    if-nez v15, :cond_c7

    .line 430
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    .line 431
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v7

    const-string v7, "getAbsolutePath(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v15, "getPath(...)"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x2

    move-object/from16 v16, v14

    const/4 v0, 0x0

    const/4 v14, 0x0

    invoke-static {v5, v7, v14, v15, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    move v14, v0

    goto :goto_cc

    :cond_c7
    move-object/from16 v17, v7

    move-object/from16 v16, v14

    const/4 v14, 0x0

    .line 434
    :goto_cc
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x3

    .line 437
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "media_type"

    .line 435
    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "description"

    .line 439
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    .line 441
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    .line 442
    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date_added"

    .line 443
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "date_modified"

    .line 444
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "duration"

    .line 445
    invoke-virtual {v12}, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->getDuration()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "width"

    .line 446
    invoke-virtual {v12}, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->getWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "height"

    .line 447
    invoke-virtual {v12}, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;->getHeight()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ()Z

    move-result v1

    if-eqz v1, :cond_13c

    mul-long/2addr v8, v10

    .line 449
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "orientation"

    .line 450
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v3, :cond_13c

    const-string v1, "relative_path"

    .line 452
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13c
    if-eqz v16, :cond_158

    .line 456
    invoke-static/range {v16 .. v16}, Lkotlin/collections/ArraysKt;->first([D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 457
    invoke-static/range {v16 .. v16}, Lkotlin/collections/ArraysKt;->last([D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_158
    if-eqz v14, :cond_161

    const-string v1, "_data"

    move-object/from16 v2, p2

    .line 460
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_161
    move-object/from16 v1, v17

    .line 466
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Ljava/io/InputStream;

    .line 467
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "EXTERNAL_CONTENT_URI"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v9, v0

    move v10, v14

    .line 464
    invoke-static/range {v5 .. v10}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->insertUri(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/io/InputStream;Landroid/net/Uri;Landroid/content/ContentValues;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v0

    return-object v0
.end method

.method private static saveVideo$refreshInputStream$6(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/FileInputStream;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method public static throwMsg(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Ljava/lang/String;)Ljava/lang/Void;
    .registers 2

    const-string p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toAssetEntity(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Landroid/content/Context;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 36

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    move-object/from16 v9, p2

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "_data"

    .line 174
    invoke-interface {v8, v0, v1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x1

    const/4 v10, 0x0

    if-eqz p3, :cond_30

    .line 175
    move-object v2, v12

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_30

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_30

    return-object v10

    :cond_30
    const-string v2, "_id"

    .line 179
    invoke-interface {v8, v0, v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v13

    .line 180
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ()Z

    move-result v2

    const-wide/16 v3, 0x0

    const-string v5, "date_added"

    if-eqz v2, :cond_57

    const-string v2, "datetaken"

    .line 181
    invoke-interface {v8, v0, v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    const/16 v2, 0x3e8

    int-to-long v10, v2

    div-long/2addr v6, v10

    cmp-long v2, v6, v3

    if-nez v2, :cond_54

    .line 183
    invoke-interface {v8, v0, v5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    :cond_54
    move-wide/from16 v16, v6

    goto :goto_5d

    .line 186
    :cond_57
    invoke-interface {v8, v0, v5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v5

    move-wide/from16 v16, v5

    :goto_5d
    const-string v2, "media_type"

    .line 187
    invoke-interface {v8, v0, v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v2, "mime_type"

    .line 188
    invoke-interface {v8, v0, v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-ne v10, v1, :cond_6e

    move-wide/from16 v20, v3

    goto :goto_76

    :cond_6e
    const-string v2, "duration"

    .line 190
    invoke-interface {v8, v0, v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    move-wide/from16 v20, v2

    :goto_76
    const-string v2, "width"

    .line 191
    invoke-interface {v8, v0, v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v2, "height"

    .line 192
    invoke-interface {v8, v0, v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v18

    const-string v2, "_display_name"

    .line 193
    invoke-interface {v8, v0, v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v2, "date_modified"

    .line 194
    invoke-interface {v8, v0, v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v30

    const-string v2, "orientation"

    .line 195
    invoke-interface {v8, v0, v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v19

    .line 196
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ()Z

    move-result v2

    if-eqz v2, :cond_a5

    const-string v2, "relative_path"

    .line 197
    invoke-interface {v8, v0, v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v0

    goto :goto_a7

    :cond_a5
    const/16 v26, 0x0

    :goto_a7
    if-eqz v11, :cond_ab

    if-nez v18, :cond_156

    :cond_ab
    const/4 v0, 0x0

    if-ne v10, v1, :cond_10f

    .line 201
    :try_start_ae
    move-object/from16 v1, v27

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "svg"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10f

    .line 202
    invoke-interface {v8, v10}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getMediaType(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-wide v2, v13

    invoke-static/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getUri$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;JIZILjava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_156

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;
    :try_end_d9
    .catchall {:try_start_ae .. :try_end_d9} :catchall_10d

    :try_start_d9
    move-object v0, v1

    check-cast v0, Ljava/io/InputStream;

    .line 204
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v2, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v0, "ImageWidth"

    .line 205
    invoke-virtual {v2, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :cond_f0
    const-string v0, "ImageLength"

    .line 206
    invoke-virtual {v2, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ff

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18
    :try_end_ff
    .catchall {:try_start_d9 .. :try_end_ff} :catchall_104

    :cond_ff
    const/4 v0, 0x0

    .line 203
    :try_start_100
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_10d

    goto :goto_156

    :catchall_104
    move-exception v0

    move-object v2, v0

    :try_start_106
    throw v2
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_107

    :catchall_107
    move-exception v0

    move-object v3, v0

    :try_start_109
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :catchall_10d
    move-exception v0

    goto :goto_153

    :cond_10f
    const/4 v1, 0x3

    if-ne v10, v1, :cond_156

    .line 210
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 211
    invoke-virtual {v1, v12}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 212
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_128

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v11, v2

    goto :goto_129

    :cond_128
    move v11, v0

    :goto_129
    const/16 v2, 0x13

    .line 214
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_135

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_135
    move/from16 v18, v0

    const/16 v0, 0x18

    .line 217
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_143

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 220
    :cond_143
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->isAboveAndroidQ()Z

    move-result v0

    if-eqz v0, :cond_14f

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V

    goto :goto_156

    :cond_14f
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_152
    .catchall {:try_start_109 .. :try_end_152} :catchall_10d

    goto :goto_156

    .line 223
    :goto_153
    invoke-static {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->error(Ljava/lang/Object;)V

    :cond_156
    :goto_156
    move v0, v11

    move/from16 v23, v19

    .line 226
    new-instance v1, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-object v9, v1

    .line 233
    invoke-interface {v8, v10}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getMediaType(I)I

    move-result v19

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0xc00

    const/16 v29, 0x0

    move-wide v10, v13

    move-wide/from16 v13, v20

    move-wide/from16 v15, v16

    move/from16 v17, v0

    move-object/from16 v20, v22

    move-wide/from16 v21, v30

    .line 226
    invoke-direct/range {v9 .. v29}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;-><init>(JLjava/lang/String;JJIIILjava/lang/String;JILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public static synthetic toAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Landroid/content/Context;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 6

    if-nez p5, :cond_c

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_7

    const/4 p3, 0x1

    .line 173
    :cond_7
    invoke-interface {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->toAssetEntity(Landroid/database/Cursor;Landroid/content/Context;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toAssetEntity"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
