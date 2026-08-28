.class public final Landroidx/camera/video/internal/utils/OutputUtil;
.super Ljava/lang/Object;
.source "OutputUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OutputUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createParentFolder(Ljava/io/File;)Z
    .registers 2

    .line 77
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 81
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    :goto_17
    return p0
.end method

.method public static getAbsolutePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_3
    new-array v5, v1, [Ljava/lang/String;

    aput-object p2, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 48
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_10} :catch_2d
    .catchall {:try_start_3 .. :try_end_10} :catchall_2b

    if-nez p0, :cond_18

    if-eqz p0, :cond_17

    .line 64
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_17
    return-object v2

    .line 54
    :cond_18
    :try_start_18
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 55
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 56
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_23} :catch_29
    .catchall {:try_start_18 .. :try_end_23} :catchall_4f

    if-eqz p0, :cond_28

    .line 64
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_28
    return-object p1

    :catch_29
    move-exception p2

    goto :goto_2f

    :catchall_2b
    move-exception p1

    goto :goto_51

    :catch_2d
    move-exception p2

    move-object p0, v2

    :goto_2f
    :try_start_2f
    const-string v3, "OutputUtil"

    const-string v4, "Failed in getting absolute path for Uri %s with Exception %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 60
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    .line 58
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_2f .. :try_end_49} :catchall_4f

    if-eqz p0, :cond_4e

    .line 64
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4e
    return-object v2

    :catchall_4f
    move-exception p1

    move-object v2, p0

    :goto_51
    if-eqz v2, :cond_56

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_56
    throw p1
.end method
