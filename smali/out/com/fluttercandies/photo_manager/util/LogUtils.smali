.class public final Lcom/fluttercandies/photo_manager/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u0007J\u0012\u0010\r\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u0007J\u001c\u0010\r\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u0012\u0010\u000f\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u0007J\u001e\u0010\u0010\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/util/LogUtils;",
        "",
        "()V",
        "TAG",
        "",
        "isLog",
        "",
        "()Z",
        "setLog",
        "(Z)V",
        "debug",
        "",
        "object",
        "error",
        "",
        "info",
        "logCursor",
        "cursor",
        "Landroid/database/Cursor;",
        "idKey",
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
.field public static final INSTANCE:Lcom/fluttercandies/photo_manager/util/LogUtils;

.field public static final TAG:Ljava/lang/String; = "PhotoManager"

.field private static isLog:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fluttercandies/photo_manager/util/LogUtils;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;-><init>()V

    sput-object v0, Lcom/fluttercandies/photo_manager/util/LogUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/util/LogUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final debug(Ljava/lang/Object;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 21
    sget-boolean v0, Lcom/fluttercandies/photo_manager/util/LogUtils;->isLog:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p0, :cond_d

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_f

    :cond_d
    const-string p0, "null"

    :cond_f
    const-string v0, "PhotoManager"

    .line 25
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final error(Ljava/lang/Object;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 41
    sget-boolean v0, Lcom/fluttercandies/photo_manager/util/LogUtils;->isLog:Z

    if-nez v0, :cond_5

    return-void

    .line 45
    :cond_5
    instance-of v0, p0, Ljava/lang/Exception;

    if-eqz v0, :cond_10

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_10
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    if-nez p0, :cond_1c

    const-string p0, "null"

    :cond_1c
    const-string v0, "PhotoManager"

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 30
    sget-boolean v0, Lcom/fluttercandies/photo_manager/util/LogUtils;->isLog:Z

    if-nez v0, :cond_5

    return-void

    .line 34
    :cond_5
    instance-of v0, p0, Ljava/lang/Exception;

    if-eqz v0, :cond_10

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_10
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    if-nez p0, :cond_1c

    const-string p0, "null"

    :cond_1c
    const-string v0, "PhotoManager"

    .line 36
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static final info(Ljava/lang/Object;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 12
    sget-boolean v0, Lcom/fluttercandies/photo_manager/util/LogUtils;->isLog:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p0, :cond_d

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_f

    :cond_d
    const-string p0, "null"

    :cond_f
    const-string v0, "PhotoManager"

    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final logCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_8

    const-string p0, "The cursor is null"

    .line 53
    invoke-static {p0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->debug(Ljava/lang/Object;)V

    return-void

    .line 56
    :cond_8
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The cursor row: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->debug(Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 57
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 58
    :goto_22
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "\n"

    if-eq v2, v0, :cond_46

    .line 62
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\nid: "

    .line 63
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 64
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_46
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    const-string v4, "getColumnNames(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v2

    const/4 v5, 0x0

    :goto_51
    if-ge v5, v4, :cond_9d

    aget-object v6, v2, v5

    .line 69
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 71
    :try_start_59
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5d} :catch_5e

    goto :goto_7c

    :catch_5e
    move-exception v8

    .line 73
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 75
    array-length v7, v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "blob("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_7c
    const/4 v8, 0x1

    .line 77
    invoke-static {v6, p1, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_9a

    const-string v8, "|--"

    .line 78
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 79
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : "

    .line 80
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 81
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 82
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9a
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 85
    :cond_9d
    invoke-static {v1}, Lcom/fluttercandies/photo_manager/util/LogUtils;->debug(Ljava/lang/Object;)V

    goto :goto_22

    .line 87
    :cond_a1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    return-void
.end method

.method public static synthetic logCursor$default(Landroid/database/Cursor;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_6

    const-string p1, "_id"

    .line 51
    :cond_6
    invoke-static {p0, p1}, Lcom/fluttercandies/photo_manager/util/LogUtils;->logCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isLog()Z
    .registers 2

    .line 8
    sget-boolean v0, Lcom/fluttercandies/photo_manager/util/LogUtils;->isLog:Z

    return v0
.end method

.method public final setLog(Z)V
    .registers 2

    .line 8
    sput-boolean p1, Lcom/fluttercandies/photo_manager/util/LogUtils;->isLog:Z

    return-void
.end method
