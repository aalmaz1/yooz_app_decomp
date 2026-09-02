.class final Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;
.super Landroid/database/ContentObserver;
.source "PhotoManagerNotifyChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaObserver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J(\u0010\u0017\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00182\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u001a\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006 "
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;",
        "Landroid/database/ContentObserver;",
        "type",
        "",
        "handler",
        "Landroid/os/Handler;",
        "(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;ILandroid/os/Handler;)V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "cr",
        "Landroid/content/ContentResolver;",
        "getCr",
        "()Landroid/content/ContentResolver;",
        "getType",
        "()I",
        "uri",
        "Landroid/net/Uri;",
        "getUri",
        "()Landroid/net/Uri;",
        "setUri",
        "(Landroid/net/Uri;)V",
        "getGalleryIdAndName",
        "Lkotlin/Pair;",
        "",
        "",
        "id",
        "onChange",
        "",
        "selfChange",
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


# instance fields
.field final synthetic this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;

.field private final type:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;ILandroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;

    .line 96
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 94
    iput p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->type:I

    const-string p1, "content://media"

    .line 97
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "parse(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->uri:Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;ILandroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_d

    .line 95
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;-><init>(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;ILandroid/os/Handler;)V

    return-void
.end method

.method private final getGalleryIdAndName(JI)Lkotlin/Pair;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "bucket_display_name"

    const-string v6, "bucket_id"

    const/4 v7, 0x0

    if-lt v0, v2, :cond_66

    .line 161
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->getCr()Landroid/content/ContentResolver;

    move-result-object v8

    .line 162
    iget-object v0, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;

    invoke-static {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->access$getAllUri$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;)Landroid/net/Uri;

    move-result-object v9

    .line 165
    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "_id = ?"

    new-array v12, v4, [Ljava/lang/String;

    .line 168
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v3

    const/4 v13, 0x0

    .line 161
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_11d

    .line 171
    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    :try_start_30
    move-object v3, v2

    check-cast v3, Landroid/database/Cursor;

    .line 172
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 174
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 173
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 177
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 176
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v5, Lkotlin/Pair;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v5, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_30 .. :try_end_52} :catchall_5d

    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v5

    .line 181
    :cond_56
    :try_start_56
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_5d

    .line 171
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_11d

    :catchall_5d
    move-exception v0

    move-object v3, v0

    :try_start_5f
    throw v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    :catchall_60
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_66
    const/4 v0, 0x2

    move/from16 v2, p3

    if-ne v2, v0, :cond_c6

    .line 185
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->getCr()Landroid/content/ContentResolver;

    move-result-object v8

    .line 186
    iget-object v0, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;

    invoke-static {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->access$getAllUri$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;)Landroid/net/Uri;

    move-result-object v9

    const-string v0, "album_id"

    const-string v2, "album"

    .line 189
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "_id = ?"

    new-array v12, v4, [Ljava/lang/String;

    .line 192
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v13, 0x0

    .line 185
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_11d

    .line 195
    move-object v4, v3

    check-cast v4, Ljava/io/Closeable;

    :try_start_91
    move-object v5, v4

    check-cast v5, Landroid/database/Cursor;

    .line 196
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 198
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 197
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 201
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 200
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v2, Lkotlin/Pair;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b3
    .catchall {:try_start_91 .. :try_end_b3} :catchall_bd

    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 205
    :cond_b7
    :try_start_b7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b9
    .catchall {:try_start_b7 .. :try_end_b9} :catchall_bd

    .line 195
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_11d

    :catchall_bd
    move-exception v0

    move-object v2, v0

    :try_start_bf
    throw v2
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_c0

    :catchall_c0
    move-exception v0

    move-object v3, v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 209
    :cond_c6
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->getCr()Landroid/content/ContentResolver;

    move-result-object v8

    .line 210
    iget-object v0, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;

    invoke-static {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->access$getAllUri$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;)Landroid/net/Uri;

    move-result-object v9

    .line 211
    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "_id = ?"

    new-array v12, v4, [Ljava/lang/String;

    .line 213
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v3

    const/4 v13, 0x0

    .line 209
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_11d

    .line 216
    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    :try_start_e8
    move-object v3, v2

    check-cast v3, Landroid/database/Cursor;

    .line 217
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 218
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 220
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v5, Lkotlin/Pair;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v5, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10a
    .catchall {:try_start_e8 .. :try_end_10a} :catchall_114

    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v5

    .line 223
    :cond_10e
    :try_start_10e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_110
    .catchall {:try_start_10e .. :try_end_110} :catchall_114

    .line 216
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_11d

    :catchall_114
    move-exception v0

    move-object v3, v0

    :try_start_116
    throw v3
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_117

    :catchall_117
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 226
    :cond_11d
    :goto_11d
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v7, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;

    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getCr()Landroid/content/ContentResolver;
    .registers 3

    .line 103
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "getContentResolver(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getType()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->type:I

    return v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 15

    if-nez p2, :cond_3

    return-void

    .line 109
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 110
    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    move-object v4, p1

    goto :goto_11

    :cond_10
    move-object v4, v0

    :goto_11
    if-eqz v4, :cond_ae

    .line 113
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->getCr()Landroid/content/ContentResolver;

    move-result-object v5

    .line 114
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;

    invoke-static {p1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->access$getAllUri$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;)Landroid/net/Uri;

    move-result-object v6

    const-string p1, "date_modified"

    const-string v1, "date_added"

    const-string v2, "media_type"

    .line 115
    filled-new-array {v1, p1, v2}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "_id = ?"

    const/4 p1, 0x1

    new-array v9, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    .line 117
    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, p1

    const/4 v10, 0x0

    .line 113
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_d5

    .line 120
    move-object v7, p1

    check-cast v7, Ljava/io/Closeable;

    iget-object v3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;

    :try_start_3f
    move-object v5, v7

    check-cast v5, Landroid/database/Cursor;

    .line 121
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_57

    const-string p1, "delete"

    const/4 v5, 0x0

    .line 123
    iget v6, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->type:I

    move-object v1, v3

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->onOuterChange(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;I)V
    :try_end_53
    .catchall {:try_start_3f .. :try_end_53} :catchall_a7

    .line 124
    invoke-static {v7, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 127
    :cond_57
    :try_start_57
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/16 v1, 0x3e8

    int-to-long v10, v1

    .line 130
    div-long/2addr v8, v10

    sub-long/2addr v8, v5

    const-wide/16 v5, 0x1e

    cmp-long v1, v8, v5

    if-gez v1, :cond_71

    const-string v1, "insert"

    goto :goto_73

    :cond_71
    const-string v1, "update"

    :goto_73
    move-object v5, v1

    .line 139
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 140
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v6}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->getGalleryIdAndName(JI)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v8, :cond_a3

    if-nez p1, :cond_96

    goto :goto_a3

    :cond_96
    move-object v1, v3

    move-object v2, p2

    move-object v3, v5

    move-object v5, v8

    .line 145
    invoke-virtual/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->onOuterChange(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;I)V

    .line 146
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9f
    .catchall {:try_start_57 .. :try_end_9f} :catchall_a7

    .line 120
    invoke-static {v7, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_d5

    .line 143
    :cond_a3
    :goto_a3
    invoke-static {v7, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_a7
    move-exception p1

    .line 120
    :try_start_a8
    throw p1
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a9

    :catchall_a9
    move-exception p2

    invoke-static {v7, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 148
    :cond_ae
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_c9

    .line 149
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->uri:Landroid/net/Uri;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c9

    .line 150
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;

    const-string v2, "insert"

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->type:I

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->onOuterChange(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;I)V

    return-void

    .line 154
    :cond_c9
    iget-object v6, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;

    const-string v8, "delete"

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->type:I

    move-object v7, p2

    invoke-virtual/range {v6 .. v11}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->onOuterChange(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;I)V

    :cond_d5
    :goto_d5
    return-void
.end method

.method public final setUri(Landroid/net/Uri;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->uri:Landroid/net/Uri;

    return-void
.end method
